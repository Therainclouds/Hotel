using BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.SessionState;

namespace HotelManage
{
    /// <summary>
    /// AddUserAjax 的摘要说明
    /// </summary>
    public class AddUserAjax : IHttpHandler,IRequiresSessionState
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            context.Response.Write("Hello World");
            //解决跨域
            context.Response.AddHeader("Access-Control-Allow-Origin", "*");
            //用户信息
            var username = context.Request.Params["Username"];
            var usercall = context.Request.Params["Usercall"];
            var userid = context.Request.Params["Userid"];
            //context.Session["username"] = context.Request.Params["Username"];
            HttpCookie cookie=new HttpCookie("username", context.Request.Params["Username"]);
            context.Request.Cookies.Add(cookie);
            //添加用户
            BLL_Hotel.Add_GuestInfo(username, 1, "男", usercall, 0, userid);
            int a = 200;
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