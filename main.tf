terraform {
  required_providers {
    spotify = {
      version = "~> 0.2.6"
      source  = "conradludgate/spotify"
    }
  }
}

provider "spotify" {
  api_key = var.spotify_api_key
}

data "spotify_track" "overkill" {
  url = "https://open.spotify.com/track/4XdaaDFE881SlIaz31pTAG"

  ## Computed
  # name = "Overkill"
  # artists = ["0qPGd8tOMHlFZt8EA1uLFY"]
  # album = "64ey3KHg3uepidKmJrb4ka"
}

data "spotify_track" "blackwater" {
  spotify_id = "4lE6N1E0L8CssgKEUCgdbA"

  ## Computed
  # name = "Blackwater"
  # artists = ["0qPGd8tOMHlFZt8EA1uLFY"]
  # album = "1AUS845POFhV3oDytPImEZ"
}

data "spotify_search_track" "by_artist" {
  artist = "Dolly Parton"
  #  album = "Jolene"
  #  name  = "Early Morning Breeze"
}

resource "spotify_playlist" "playlist" {
  name        = "Terraform Playlist"
  description = "This playlist was created by Terraform"
  public      = true

  tracks = [
    data.spotify_search_track.by_artist.tracks[0].id,
    data.spotify_search_track.by_artist.tracks[1].id,
    data.spotify_track.blackwater.id,
    data.spotify_track.overkill.id,
  ]
}
