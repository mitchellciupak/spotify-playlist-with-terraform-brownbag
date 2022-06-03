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

#### Examples ####

# Song by URL
data "spotify_track" "ninetofive_dollyp" {
  url = "https://open.spotify.com/track/4w3tQBXhn5345eUXDGBWZG?si=dc7cdcab78ef406d"
}

# Song by ID
data "spotify_track" "cheeseburger_jimmybuffet" {
  # Take a look at the url below --> track == 6VeZ970uI0Yi6sjBgyFBrp
  # https://open.spotify.com/track/6VeZ970uI0Yi6sjBgyFBrp?si=9089cdb316184b68
  spotify_id = "6VeZ970uI0Yi6sjBgyFBrp"
}

## List of Songs by Artist Search
data "spotify_search_track" "queen_topsongs" {
  artist = "Queen"
  #  album = "A Night At The Opera"
  #  name  = "Bohemian Rhapsody - Remastered 2011"
}

resource "spotify_playlist" "playlist" {
  name        = "Nashville 2022 Brownbag Playlist"
  description = "Learn more at https://github.com/mitchellciupak/spotify-playlist-with-terraform-brownbag"
  public      = true

  tracks = [
    data.spotify_track.ninetofive_dollyp.id,
    data.spotify_track.cheeseburger_jimmybuffet.id,
    data.spotify_search_track.queen_topsongs.tracks[0].id,
    data.spotify_search_track.queen_topsongs.tracks[1].id,
    data.spotify_search_track.queen_topsongs.tracks[2].id,    
  ]
}
