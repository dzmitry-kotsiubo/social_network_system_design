Table voyager_media_post_comments {
  id bigint [pk]
  post_id bigint [not null]
  follower_id bigint [not null]
  comment varchar(200) [not null]

  indexes {
    (post_id) // as we load comments for each particular post
  }
}
