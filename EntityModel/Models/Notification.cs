using System;
using System.Collections.Generic;

namespace EntityModel.Models
{
    public partial class Notification
    {
        public long Id { get; set; }
        public string Content { get; set; }
        public long UserId { get; set; }
        public byte? Type { get; set; }
        public DateTime? CreatedTime { get; set; }
        public bool? Seen { get; set; }
        public string Html { get; set; }
        public long? TargetId { get; set; }
    }
}
