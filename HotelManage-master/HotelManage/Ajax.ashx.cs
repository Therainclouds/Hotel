using HotelManage.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;


namespace HotelManage
{
    /// <summary>
    /// Ajax 的摘要说明
    /// </summary>
    public class Ajax : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            context.Response.ClearHeaders();
            //解决跨域
            context.Response.AddHeader("Access-Control-Allow-Origin", "*");
            //用户信息
            var username=context.Request.Params["Username"];
            var usercall = context.Request.Params["Usercall"];
            var userid = context.Request.Params["Userid"];
         
            
            //客房信息
            //普通单间
            var nowdate1 = context.Request.Params["Nowdate1"];
            var getday1 = context.Request.Params["Getday1"];
            //豪华单
            var nowdate2 = context.Request.Params["Nowdate2"];
            var getday2 = context.Request.Params["Getday2"];
            //普通双间
            var nowdate3 = context.Request.Params["Nowdate3"];
            var getday13= context.Request.Params["Getday3"];
           /*豪华双间*/
            var nowdate4 = context.Request.Params["Nowdate4"];
            var getday4 = context.Request.Params["Getday4"];
            /*贵宾套房*/
            var nowdate5 = context.Request.Params["Nowdate5"];
            var getday5 = context.Request.Params["Getday5"];
            /*总统套房*/
            var nowdate6 = context.Request.Params["Nowdate6"];
            var getday6 = context.Request.Params["Getday6"];

            using(HotelManage1Entities db=new HotelManage1Entities())
            {
              
            }
            int a = 1200;

            context.Response.Write(a);
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}