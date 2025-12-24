// PostgreSQL
// Replication:
// - master-slave (one sync)
// - replication factor 2
//
Table voyager_media_post_comments {
  id bigint [pk]
  post_id bigint [not null]
  author_id bigint [not null]
  comment varchar(200) [not null]
  published_at date [not null]


  indexes {
    (post_id) // as we load comments for each particular post
  }
}
