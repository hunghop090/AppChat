using System;
using System.Collections.Generic;

namespace EntityModel.Models
{
    public partial class Group
    {
        public long Id { get; set; }
        public string GroupName { get; set; }
        public long? CreatedUser { get; set; }
        public string Avatar { get; set; }
        public string Banner { get; set; }
        public string InfoId { get; set; }
        public byte? Status { get; set; }
        public DateTime CreatedTime { get; set; }
    }
}
