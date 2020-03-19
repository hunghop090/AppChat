using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

namespace EntityModel.Models
{
    public partial class EngnestContext : DbContext
    {
        public EngnestContext()
        {
        }

        public EngnestContext(DbContextOptions<EngnestContext> options)
            : base(options)
        {
        }

        public virtual DbSet<Comment> Comment { get; set; }
        public virtual DbSet<Emotion> Emotion { get; set; }
        public virtual DbSet<Group> Group { get; set; }
        public virtual DbSet<GroupMember> GroupMember { get; set; }
        public virtual DbSet<Message> Message { get; set; }
        public virtual DbSet<Notification> Notification { get; set; }
        public virtual DbSet<Post> Post { get; set; }
        public virtual DbSet<Relationship> Relationship { get; set; }
        public virtual DbSet<SystermCode> SystermCode { get; set; }
        public virtual DbSet<User> User { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. See http://go.microsoft.com/fwlink/?LinkId=723263 for guidance on storing connection strings.
                optionsBuilder.UseSqlServer("Data Source=DESKTOP-1DL6R8C;Initial Catalog=Engnest;Integrated Security=True");
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Comment>(entity =>
            {
                entity.Property(e => e.Id).HasColumnName("ID");

                entity.Property(e => e.Content).IsRequired();

                entity.Property(e => e.CreatedTime)
                    .HasColumnType("datetime")
                    .HasDefaultValueSql("(getdate())");

                entity.Property(e => e.Tags).HasMaxLength(500);

                entity.Property(e => e.TagsUser).HasMaxLength(500);
            });

            modelBuilder.Entity<Emotion>(entity =>
            {
                entity.Property(e => e.Id).HasColumnName("ID");

                entity.Property(e => e.CreatedTime)
                    .HasColumnType("datetime")
                    .HasDefaultValueSql("(getdate())");

                entity.Property(e => e.TargetType)
                    .HasMaxLength(10)
                    .IsFixedLength();

                entity.Property(e => e.Type)
                    .HasMaxLength(10)
                    .IsFixedLength();
            });

            modelBuilder.Entity<Group>(entity =>
            {
                entity.Property(e => e.Id).HasColumnName("ID");

                entity.Property(e => e.Avatar).HasMaxLength(500);

                entity.Property(e => e.Banner).HasMaxLength(500);

                entity.Property(e => e.CreatedTime)
                    .HasColumnType("datetime")
                    .HasDefaultValueSql("(getdate())");

                entity.Property(e => e.GroupName).HasMaxLength(200);

                entity.Property(e => e.InfoId).HasMaxLength(500);
            });

            modelBuilder.Entity<GroupMember>(entity =>
            {
                entity.Property(e => e.Id).HasColumnName("ID");

                entity.Property(e => e.CreatedTime)
                    .HasColumnType("datetime")
                    .HasDefaultValueSql("(getdate())");

                entity.Property(e => e.GroupId).HasColumnName("GroupID");
            });

            modelBuilder.Entity<Message>(entity =>
            {
                entity.Property(e => e.Id).HasColumnName("ID");

                entity.Property(e => e.Audios).HasMaxLength(500);

                entity.Property(e => e.CreatedTime)
                    .HasColumnType("datetime")
                    .HasDefaultValueSql("(getdate())");

                entity.Property(e => e.Image).HasMaxLength(500);

                entity.Property(e => e.Other).HasMaxLength(500);

                entity.Property(e => e.UserId).HasColumnName("UserID");
            });

            modelBuilder.Entity<Notification>(entity =>
            {
                entity.Property(e => e.Content).IsRequired();

                entity.Property(e => e.CreatedTime)
                    .HasColumnType("datetime")
                    .HasDefaultValueSql("(getdate())");

                entity.Property(e => e.Html)
                    .HasColumnName("HTML")
                    .IsUnicode(false);
            });

            modelBuilder.Entity<Post>(entity =>
            {
                entity.Property(e => e.Id).HasColumnName("ID");

                entity.Property(e => e.Audios).HasMaxLength(500);

                entity.Property(e => e.CreatedTime)
                    .HasColumnType("datetime")
                    .HasDefaultValueSql("(getdate())");

                entity.Property(e => e.Tags).HasMaxLength(500);

                entity.Property(e => e.UpdateTime).HasColumnType("datetime");
            });

            modelBuilder.Entity<Relationship>(entity =>
            {
                entity.Property(e => e.Id).HasColumnName("ID");

                entity.Property(e => e.AcceptTime).HasColumnType("datetime");

                entity.Property(e => e.CreatedTime)
                    .HasColumnType("datetime")
                    .HasDefaultValueSql("(getdate())");

                entity.Property(e => e.UpdateTime).HasColumnType("datetime");

                entity.Property(e => e.UserReceiveId).HasColumnName("UserReceiveID");

                entity.Property(e => e.UserSentId).HasColumnName("UserSentID");
            });

            modelBuilder.Entity<SystermCode>(entity =>
            {
                entity.Property(e => e.Id).HasColumnName("ID");

                entity.Property(e => e.SysId).HasColumnName("SysID");

                entity.Property(e => e.Text).HasMaxLength(200);

                entity.Property(e => e.Value)
                    .HasMaxLength(20)
                    .IsFixedLength();
            });

            modelBuilder.Entity<User>(entity =>
            {
                entity.Property(e => e.Id).HasColumnName("ID");

                entity.Property(e => e.ActiveCode).HasMaxLength(20);

                entity.Property(e => e.Birthday).HasColumnType("date");

                entity.Property(e => e.Country).HasMaxLength(20);

                entity.Property(e => e.CreatedTime)
                    .HasColumnType("datetime")
                    .HasDefaultValueSql("(getdate())");

                entity.Property(e => e.Email)
                    .IsRequired()
                    .HasMaxLength(50);

                entity.Property(e => e.FirstName).HasMaxLength(50);

                entity.Property(e => e.Gender).HasMaxLength(20);

                entity.Property(e => e.LastName).HasMaxLength(50);

                entity.Property(e => e.Lat).HasColumnType("decimal(18, 10)");

                entity.Property(e => e.Lng).HasColumnType("decimal(18, 10)");

                entity.Property(e => e.NickName).HasMaxLength(50);

                entity.Property(e => e.Password)
                    .IsRequired()
                    .HasMaxLength(50);

                entity.Property(e => e.Phone).HasMaxLength(20);

                entity.Property(e => e.Relationship).HasMaxLength(20);

                entity.Property(e => e.Status).HasMaxLength(500);

                entity.Property(e => e.SubName).HasMaxLength(50);

                entity.Property(e => e.Token).HasMaxLength(20);

                entity.Property(e => e.UpdateTime).HasColumnType("datetime");

                entity.Property(e => e.UserName)
                    .IsRequired()
                    .HasMaxLength(50);
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
