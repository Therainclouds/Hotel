using BLL;
using HotelManage.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.SessionState;

namespace HotelManage
{
    /// <summary>
    /// Ajax 的摘要说明
    /// </summary>
    public class Ajax : IHttpHandler, IRequiresSessionState
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            context.Response.ClearHeaders();
            //解决跨域
            context.Response.AddHeader("Access-Control-Allow-Origin", "*");
            ////用户信息
            //var username = context.Request.Params["Username"];
            //var usercall = context.Request.Params["Usercall"];
            //var userid = context.Request.Params["Userid"];

            ////添加用户
            //BLL_Hotel.Add_GuestInfo(username, 1, "男", usercall, 0, userid);



            //客房信息
            //普通单间
            var nowdate1 = context.Request.Params["Nowdate1"];
            var getday1 = context.Request.Params["Getday1"];
            //豪华单
            var nowdate2 = context.Request.Params["Nowdate2"];
            var getday2 = context.Request.Params["Getday2"];
            //普通双间
            var nowdate3 = context.Request.Params["Nowdate3"];
            var getday3 = context.Request.Params["Getday3"];
            /*豪华双间*/
            var nowdate4 = context.Request.Params["Nowdate4"];
            var getday4 = context.Request.Params["Getday4"];
            /*贵宾套房*/
            var nowdate5 = context.Request.Params["Nowdate5"];
            var getday5 = context.Request.Params["Getday5"];
            /*总统套房*/
            var nowdate6 = context.Request.Params["Nowdate6"];
            var getday6 = context.Request.Params["Getday6"];


            var roomType = Convert.ToInt32(context.Request.Params["RoomType"]);

            //根据客户姓名查询客户gid
            string username=context.Request.Params["UserName"];
            DataTable infoTable = BLL_Hotel.Cha_Gname(username);
            int gid = (int)infoTable.Rows[0][0];
            //查询类型房间的空余房间
           DataTable roomInfo= BLL_Hotel.roomIsNull(roomType);
            int roomid= (int)roomInfo.Rows[0][0];

            switch (roomType)
            {
                case 1:
                    addReserve(gid, roomid, nowdate1, getday1);
                    break;
                    case 2:
                        addReserve(gid, roomid, nowdate2, getday2);
                    break;
                    case 3:
                    addReserve(gid, roomid, nowdate3, getday3);
                    break;
                    case 4:
                        addReserve(gid, roomid, nowdate4, getday4);
                    break;
                case 5:
                    addReserve(gid, roomid, nowdate5, getday5);
                    break;
                case 6:
                    addReserve(gid, roomid, nowdate6, getday6);
                    break;
            }


            int a = 1200;

            context.Response.Write(a);
        }

        private void addReserve(int gid, int roomid, string nowdate, string getday)
        {
            //入住时间
            DateTime intime = Convert.ToDateTime(nowdate);
            //离开时间
            DateTime outtime = intime.AddDays(Convert.ToInt32(getday));
            //入住天数
            int day = Convert.ToInt32(getday);
            // 预算消费
            DataTable dt = BLL_Hotel.Cha_One(roomid);//查询该房间每日金额以计算押金
            int DP = Convert.ToInt32(dt.Rows[0]["rtprice"]);
            double charge = (day + 0) * DP;
            double actcharge = charge;
            BLL_Hotel.Add_Reserve(gid, roomid, intime, outtime, day, charge, actcharge); //入住预定（预定信息表插入数据）
            BLL_Hotel.Gai_roomstate(roomid, 1);//修改房间状态
            
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