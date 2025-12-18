// PostgreSQL
// Replication:
// - master-slave (one sync)
// - replication factor 2
//
Table voyager_subscriptions {
  id bigint [pk]
  voyager_id bigint [not null]
  follower_id bigint [not null]

  indexes {
    (voyager_id) // to speedup new post addition to follower's feeds
  }
}
