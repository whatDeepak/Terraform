resource "spotify_playlist" "TerrafromPlaylist" {
  name        = "Terrafrom Playlist"
  description = "My playlist made using Terraform"
  public      = false

  tracks = [
    data.spotify_track.slowitdown.id
  ]
}

data "spotify_track" "slowitdown" {
  url = "https://open.spotify.com/track/51eSHglvG1RJXtL3qI5trr?si=d720c1a9c3954d2b"
}
