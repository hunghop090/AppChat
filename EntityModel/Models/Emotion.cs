using System;
using System.Collections.Generic;

namespace EntityModel.Models
{
    public partial class Emotion
    {
        public long Id { get; set; }
        public string Type { get; set; }
        public long? UserId { get; set; }
        public long? TargetId { get; set; }
        public string TargetType { get; set; }
        public DateTime? CreatedTime { get; set; }
        public byte? Status { get; set; }
    }
}
