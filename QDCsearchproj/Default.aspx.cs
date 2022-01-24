using System;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Web.Script.Serialization;
using System.Web.Services;

namespace ecommerce
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]
        public static string GetPricingDetails(string manufacturerProductCode)
        {
            string json = string.Empty;

            using (var client = new HttpClient())
            {
                client.BaseAddress = new Uri("https://q2020adminapi-dev2dot1.azurewebsites.net/api/");
                string action = "GetQPCPriceDetail?ManufacturerProductCode=" + manufacturerProductCode + "&ClientMargin=3.000&ClientID=3347&CountryID=14&Portal=CLIENT";
                client.DefaultRequestHeaders.Accept.Clear();
                client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
                client.DefaultRequestHeaders.Add("api-key", "2FAC1447E6DA3A4751208C739FF977F0");
                //GET Method
                HttpResponseMessage response = client.GetAsync(action).Result;
                if (response.IsSuccessStatusCode)
                {
                    json = response.Content.ReadAsStringAsync().Result;
                }
                else
                {
                    Console.WriteLine("Internal server Error");
                }
            }
            //JavaScriptSerializer TheSerializer = new JavaScriptSerializer();
            //var TheJson = TheSerializer.Serialize("{data: \"Test\"}");
            return json;
        }
    }
}