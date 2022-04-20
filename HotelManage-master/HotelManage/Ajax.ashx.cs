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
            var nowdate = context.Request.Params["Nowdate"];
            var getday = context.Request.Params["Getday"];
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