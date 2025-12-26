// Redis
// Replication:
// - master-slave (2 async slaves)
// - replication factor 3
//
Table place {
  place_id string
  place_id_provider string
  place_name string
}

Table places_leaderboard {
  geohash string [pk]
  places list[place]  
}

Table posts_leaderboard {
  geohash string [pk]
  post_id_list list[int]  
}
