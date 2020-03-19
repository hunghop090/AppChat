using System;
using System.Collections.Generic;

namespace EntityModel.Models
{
    public partial class User
    {
        public long Id { get; set; }
        public string UserName { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Email { get; set; }
        public string Phone { get; set; }
        public string Token { get; set; }
        public string Password { get; set; }
        public DateTime? Birthday { get; set; }
        public string Country { get; set; }
        public string Gender { get; set; }
        public string Relationship { get; set; }
        public string AboutMe { get; set; }
        public decimal? Lat { get; set; }
        public decimal? Lng { get; set; }
        public string NickName { get; set; }
        public string SubName { get; set; }
        public string Status { get; set; }
        public string Avatar { get; set; }
        public string BackGround { get; set; }
        public byte Type { get; set; }
        public DateTime CreatedTime { get; set; }
        public string ActiveCode { get; set; }
        public DateTime? UpdateTime { get; set; }
        public bool? Flag { get; set; }
        public string Category { get; set; }
    }
}
