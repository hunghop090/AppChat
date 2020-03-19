using System;
using System.Collections.Generic;

namespace EntityModel.Models
{
    public partial class Relationship
    {
        public long Id { get; set; }
        public long UserSentId { get; set; }
        public long UserReceiveId { get; set; }
        public DateTime CreatedTime { get; set; }
        public DateTime? UpdateTime { get; set; }
        public byte? Type { get; set; }
        public DateTime? AcceptTime { get; set; }
        public byte? Status { get; set; }
    }
}
