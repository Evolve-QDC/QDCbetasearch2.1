using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace ecommerce
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {

        }

        protected void Session_Start(object sender, EventArgs e)
        {

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {
            //var context = HttpContext.Current;
            //var response = context.Response;

            //// enable CORS  
            //response.AddHeader("Access-Control-Allow-Origin", "*");
            //response.AddHeader("api-key", "2FAC1447E6DA3A4751208C739FF977F0");

            //if (context.Request.HttpMethod == "OPTIONS")
            //{
            //    response.AddHeader("Access-Control-Allow-Methods", "GET, POST, OPTIONS");
            //    response.AddHeader("Access-Control-Allow-Headers", "Content-Type, Accept");
            //    response.End();
            //}
        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}