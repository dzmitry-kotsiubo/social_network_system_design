// PostgreSQL
// Replication:
// - master-slave (one sync)
// - replication factor 2
//
Table voyager_media_posts {
  id bigint [pk]
  voyager_id bigint [not null]
  caption varchar(500) [not null]
  latitude double [not null]
  longitude double [not null]
  published_at date [not null]
}

Table voyager_media_post_assets {
  asset_id bigint [pk]  // pk for uniqueness of asset_id
  post_id bigint [not null, ref: > voyager_media_posts.id]

  indexes {
    (post_id)
  }
}
