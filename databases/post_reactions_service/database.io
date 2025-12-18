// PostgreSQL
// Replication:
// - master-slave (one sync)
// - replication factor 2
//
enum VoyagerMediaPostReactionsType {
  Like, Love, Curious, Celebrate, Insightful
}

Table voyager_media_post_reactions {
  id bigint [pk]
  post_id bigint [not null]
  follower_id bigint [not null]
  reaction_type VoyagerMediaPostReactionsType [not null]

  indexes {
    (post_id) // as we load reactions summary for each particular post
  }
}
