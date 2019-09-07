using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Script.Serialization;
using System.Data;
using System.Web;
using MyJson.Class;

namespace AngularJs.WebAPI
{
    public class TestDataController : ApiController
    {
        public string HelloData()
        {
            DataTransfer objNewData = new DataTransfer();
            //return new JavaScriptSerializer().Deserialize<String>(objNewData.GetData());
            return objNewData.GetData();
        }

        public class DataTransfer
        {
            public string GetData()
            {
                System.Data.DataSet dtd = new System.Data.DataSet();
                dtd.ReadXml(HttpContext.Current.Server.MapPath("~/App_Data/DropDownMsgList.xml"));
                JavaScriptSerializer jsontest = new JavaScriptSerializer();

                List<Data> objNewData = new List<Data>();
                if (dtd != null)
                {
                    objNewData = (from p in dtd.Tables[0].AsEnumerable()
                                  select new Data()
                                  {
                                      ID = p.Field<String>("SelTabID"),
                                      Name = p.Field<String>("DDLMsg")
                                  }).ToList();
                }

                return jsontest.Serialize(objNewData);
            }

        }
    }
}
