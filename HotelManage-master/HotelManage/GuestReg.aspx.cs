using BLL;
using Newtonsoft.Json.Linq;
using System;
using System.Data;
using System.IO;
using Utils;

namespace HotelManage
{
    public partial class GuestReg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            bind();
        }
        public void bind()
        {
            DataTable dt = BLL_Hotel.bind_GuestTname();
            this.ddlGTid.DataSource = dt;
            this.ddlGTid.DataValueField = "GTid";
            this.ddlGTid.DataTextField = "Tname";
            this.ddlGTid.DataBind();



        }
        //提交新增客户信息到数据库
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string name = this.txtGname.Text;
            string mobile = this.txtMobile.Text;
            string pid = this.txtPid.Text;
            int chargesum = Convert.ToInt32(this.txtChargeSum.Text);
            int GTid = Convert.ToInt32(this.ddlGTid.SelectedValue);
            string sex = "";
            if (this.rdoFemale.Checked == true)
            {
                sex = "女";
            }
            else if (this.rdoFemale.Checked == true)
            {
                sex = "男";
            }

            BLL_Hotel.Add_GuestInfo(name, GTid, sex, mobile, chargesum, pid);//新增顾客信息
            Response.Write("<script>alert('客户信息添加成功！');location.href='Guestinfo.aspx';</script>");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                var imgurl = FileUpload1.FileName;
                string imgur2 = Server.MapPath("./IDCarImgs/" + imgurl);
                FileUpload1.SaveAs(imgur2);
                StreamReader reader = new QueryCarInfo().queryCarInfo(imgur2);
                JObject info = JObject.Parse(reader.ReadToEnd());

                //从Json获取值设置文本显示信息
                this.txtGname.Text = info["name"].ToString();
                this.txtPid.Text = info["num"].ToString();
                if (info["sex"].ToString().Equals("男"))
                {
                    this.rdoMale.Checked = true;
                }
                else if (info["sex"].ToString().Equals("女"))
                {
                    this.rdoFemale.Checked = true;
                }

            }
        }
    }
}