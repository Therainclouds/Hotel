﻿using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Security;
using System.Security.Cryptography.X509Certificates;
using System.Text;
using System.Threading.Tasks;

namespace Utils
{
    public class QueryCarInfo
    {
        public StreamReader queryCarInfo(string imgfile)
        {
            StreamReader reader1 = null;
            String url = "http://dm-51.data.aliyun.com/rest/160601/ocr/ocr_idcard.json";
            String appcode = "8d69b9f0efe046d499e93a086615a03d";
            String img_file = imgfile;

            //如果没有configure字段，configure设为''
            //String configure = '';
            String configure = "{\\\"side\\\":\\\"face\\\"}";

            String method = "POST";

            String querys = "";

            String base64 = "";
            if (img_file.StartsWith("http"))
            {
                base64 = img_file;
            }
            else
            {
                FileStream fs = new FileStream(img_file, FileMode.Open);
                BinaryReader br = new BinaryReader(fs);
                byte[] contentBytes = br.ReadBytes(Convert.ToInt32(fs.Length));
                base64 = System.Convert.ToBase64String(contentBytes);
            }

            String bodys;
            bodys = "{\"image\":\"" + base64 + "\"";
            if (configure.Length > 0)
            {
                bodys += ",\"configure\" :\"" + configure + "\"";
            }
            bodys += "}";
            HttpWebRequest httpRequest = null;
            HttpWebResponse httpResponse = null;

            if (0 < querys.Length)
            {
                url = url + "?" + querys;
            }

            if (url.Contains("https://"))
            {
                ServicePointManager.ServerCertificateValidationCallback = new RemoteCertificateValidationCallback(CheckValidationResult);
                httpRequest = (HttpWebRequest)WebRequest.CreateDefault(new Uri(url));
            }
            else
            {
                httpRequest = (HttpWebRequest)WebRequest.Create(url);
            }
            httpRequest.Method = method;
            httpRequest.Headers.Add("Authorization", "APPCODE " + appcode);
            httpRequest.ContentType = "application/json; charset=UTF-8";
            if (0 < bodys.Length)
            {
                byte[] data = Encoding.UTF8.GetBytes(bodys);
                using (Stream stream = httpRequest.GetRequestStream())
                {
                    stream.Write(data, 0, data.Length);
                }
            }
            try
            {
                httpResponse = (HttpWebResponse)httpRequest.GetResponse();
            }
            catch (WebException ex)
            {
                httpResponse = (HttpWebResponse)ex.Response;
            }

            if (httpResponse.StatusCode != HttpStatusCode.OK)
            {
                Console.WriteLine("http error code: " + httpResponse.StatusCode);
                Console.WriteLine("error in header: " + httpResponse.GetResponseHeader("X-Ca-Error-Message"));
                Console.WriteLine("error in body: ");
                Stream st = httpResponse.GetResponseStream();
                StreamReader reader = new StreamReader(st, Encoding.GetEncoding("utf-8"));
                Console.WriteLine(reader.ReadToEnd());
            }
            else
            {

                Stream st = httpResponse.GetResponseStream();
                StreamReader reader = new StreamReader(st, Encoding.GetEncoding("utf-8"));

                reader1 = reader;
            }


            return reader1;


        }
        public static bool CheckValidationResult(object sender, X509Certificate certificate, X509Chain chain, SslPolicyErrors errors)
        {
            return true;
        }
    }
}
