//------------------------------------------------------------------------------
// <auto-generated>
//     此代码已从模板生成。
//
//     手动更改此文件可能导致应用程序出现意外的行为。
//     如果重新生成代码，将覆盖对此文件的手动更改。
// </auto-generated>
//------------------------------------------------------------------------------

namespace HotelManage.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Reserve
    {
        public int Yid { get; set; }
        public int Gid { get; set; }
        public int RoomId { get; set; }
        public Nullable<System.DateTime> InTime { get; set; }
        public Nullable<System.DateTime> OutTime { get; set; }
        public string FactTime { get; set; }
        public Nullable<int> daynum { get; set; }
        public Nullable<int> Charge { get; set; }
        public Nullable<int> actCharge { get; set; }
    }
}
