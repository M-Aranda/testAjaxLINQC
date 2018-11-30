using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace testAjaxYLINQ.Controller
{
    /// <summary>
    /// Summary description for test
    /// </summary>
    public class test : IHttpHandler
    {

        private BDTESTDataContext bd = new BDTESTDataContext();

        public void ProcessRequest(HttpContext context)
        {
            String nom = context.Request.Params["nombre"];
            Sexo s = new Sexo();
            s.nombre_sexo = nom;
            bd.Sexos.InsertOnSubmit(s);
            bd.SubmitChanges();
            context.Response.Redirect("../Default.aspx");

        }

        public bool IsReusable {
            get {
                return false;
            }
        }
    }
}