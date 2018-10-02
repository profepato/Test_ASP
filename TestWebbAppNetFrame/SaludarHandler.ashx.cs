using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Web.SessionState;

namespace TestWebbAppNetFrame {
    /// <summary>
    /// Descripción breve de SaludarHandler
    /// </summary>
    public class SaludarHandler : IHttpHandler, IRequiresSessionState {

        public void ProcessRequest(HttpContext context) {
            context.Response.ContentType = "text/html";
            String nombre = context.Request.Params["nombre"];
           
            context.Session["nombre"] = nombre;
            
            // context.Response.Write("<br><a href='Default.aspx'>Volver</a>");

            context.Response.Redirect("Default.aspx");
        }

        public bool IsReusable {
            get {
                return false;
            }
        }
    }
}