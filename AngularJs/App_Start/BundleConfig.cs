using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Optimization;
using System.Web.UI;

namespace AngularJs.App_Start
{
    public class BundleConfig
    {
        public static void RegisterBundles(BundleCollection bndleclc)
        {
            /*
             /// Here all the JS files are written need to optimize & minify numerous files into one
             eg:
             * bndleclc.Add(new ScriptBundle("~/Scripts/CommonJS").
                Include("~/folderpath/filename.js")
                );
             */
            bndleclc.Add(new ScriptBundle("~/Scripts/CommonJS").
                Include("~/folderpath/filename.js")
                );
            BundleTable.EnableOptimizations = true;
            ScriptManager.ScriptResourceMapping.AddDefinition
                ("responding", new ScriptResourceDefinition
                {
                    Path = "~/Scripts/responding.min.js",
                    DebugPath = "~/Scripts/responding.js"
                });
        }
    }
}
