using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace SalesPerformanceUI
{
        [DataContract]
        public class DataPoint
        {
           
            //Explicitly setting the name to be used while serializing to JSON.
            [DataMember(Name = "y")]
            public string y = "";

            //Explicitly setting the name to be used while serializing to JSON.
            [DataMember(Name = "a")]
            public Nullable<int> a = null;
            [DataMember(Name = "b")]
            public Nullable<int> b = null;
            [DataMember(Name = "c")]
            public Nullable<int> c = null;

            [DataMember(Name = "BusinessType")]
            public string BusinessType = "";
        
    }
}