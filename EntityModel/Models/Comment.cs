using System;
using System.Collections.Generic;

namespace EntityModel.Models
{
    public partial class Comment
    {
        public long Id { get; set; }
        public string Content { get; set; }
        public byte? Type { get; set; }
        public long TargetId { get; set; }
        public byte? TargetType { get; set; }
        public DateTime CreatedTime { get; set; }
        public byte? Status { get; set; }
        public string Images { get; set; }
        public string Audios { get; set; }
        public string Tags { get; set; }
        public string TagsUser { get; set; }
        public long? UserId { get; set; }
    }
}
