using System;
using System.Collections.Generic;

namespace EntityModel.Models
{
    public partial class GroupMember
    {
        public long Id { get; set; }
        public long GroupId { get; set; }
        public long UserId { get; set; }
        public byte? Type { get; set; }
        public byte? Status { get; set; }
        public DateTime CreatedTime { get; set; }
    }
}
