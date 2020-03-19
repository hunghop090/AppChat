using System;
using System.Collections.Generic;

namespace EntityModel.Models
{
    public partial class SystermCode
    {
        public long Id { get; set; }
        public long? SysId { get; set; }
        public string Value { get; set; }
        public string Text { get; set; }
        public string Note { get; set; }
    }
}
