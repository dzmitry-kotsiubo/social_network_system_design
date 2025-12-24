// PostgreSQL
// Replication:
// - master-slave (one sync)
// - replication factor 2
//
Table popular_places {
  id bigint [pk]
  location geography [not null] // postgis
  as_of_date date [not null]
  rating integer [not null]

  index {
    location [type: gist]
  }
}