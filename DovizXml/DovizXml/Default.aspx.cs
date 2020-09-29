using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace DovizXml
{
    public partial class Default : System.Web.UI.Page
    {
        public void doviz()
        {
            string today = "http://www.tcmb.gov.tr/kurlar/today.xml";
            var xmlDoc = new XmlDocument();
            xmlDoc.Load(today);
            string USD = xmlDoc.SelectSingleNode("Tarih_Date/Currency[@Kod='USD']/BanknoteSelling").InnerXml;
            string EURO = xmlDoc.SelectSingleNode("Tarih_Date/Currency[@Kod='EUR']/BanknoteSelling").InnerXml;
            string YEN = xmlDoc.SelectSingleNode("Tarih_Date/Currency[@Kod='JPY']/BanknoteSelling").InnerXml;
            lblDolar.Text = USD;
            lblEuro.Text = EURO;
            lblYen.Text = YEN;
            
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            doviz();
        }
        
        protected void Button1_Click(object sender, EventArgs e)
        {
            doviz();
            lblTarih.Text = DateTime.Now.ToString();
        }
    }
}