using System;
using System.Collections.Generic;

namespace EntityModel.Models
{
    public partial class Message
    {
        public long Id { get; set; }
        public string Content { get; set; }
        public long? UserId { get; set; }
        public long? TargetUser { get; set; }
        public DateTime CreatedTime { get; set; }
        public string Audios { get; set; }
        public string Image { get; set; }
        public string Other { get; set; }
        public bool? Seen { get; set; }
    }
}
