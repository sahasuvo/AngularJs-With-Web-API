using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Http;

namespace AngularJs.App_Start
{
    public class WebApiConfig
    {
        public static void Registering(HttpConfiguration httpconfig)
        {
            httpconfig.MapHttpAttributeRoutes();
            httpconfig.Routes.MapHttpRoute
                (
                name: "DefaultMapApi",
                routeTemplate: "api/{controller}/{id}",
                defaults: new { id = RouteParameter.Optional }
                );
        }
    }
}
