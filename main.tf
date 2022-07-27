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
data "spotify_track" "jolene_dollyp" {
  # Take a look at the url below --> track == 5fdhThPDe6jQQDqCyWrdAn
  # https://open.spotify.com/track/5fdhThPDe6jQQDqCyWrdAn?si=615eb81192da4028
  spotify_id = "5fdhThPDe6jQQDqCyWrdAn"
}

## List of Songs by Artist Search
data "spotify_search_track" "queen_topsongs" {
  artist = "Queen"
  #  album = "A Night At The Opera"
  #  name  = "Bohemian Rhapsody - Remastered 2011"
}

#### Place Your Song Here ####
## Added by Jacob Beard
data "spotify_track" "1985_bowlingforsoup" {
  spotify_id = "5oQcOu1omDykbIPSdSQQNJ"
}

data "spotify_track" "ribs_lorde" {
  spotify_id = "2MvvoeRt8NcOXWESkxWn3g"
}

data "spotify_track" "BlindingLights_TheWeekend.id" {
  spotify_id = "0VjIjW4GlUZAMYd2vXMi3b"
}

## Added by Rohith Sri
data "spotify_track" "highwaytohell_acdc" {
  spotify_id = "2zYzyRzz6pRmhPzyfMEC8s"
}

data "spotify_track" "DontBringMeDown_ELO" {
  spotify_id = "72ahyckBJfTigJCFCviVN7"
}

## Added by Alex Scogin
data "spotify_track" "margaritaville_jimmybuffet" {
  spotify_id = "57FvuUotRyzRl8hwIhCVuO"
}

##Added by Nicole Cooney
data "spotify_track" "richgirl_hallandoates" {
  spotify_id = "0qRR9d89hIS0MHRkQ0ejxX"
}

data "spotify_track" "Goodbye_Stranger_Supertramp" {
  spotify_id = "5dE8s6uWRGNc1Ac7y8rULq"
}

data "spotify_track" "likegold_vancejoy" {
  spotify_id = "6Od2OWvoT4embWAgIGeFRd"
}

data "spotify_track" "cheeseburger_jimmybuffet" {
  spotify_id = "6VeZ970uI0Yi6sjBgyFBrp"
}

data "spotify_track" "woman_twayne" {
  spotify_id = "6sxptembJVty4sNtcPMAVz"
}

## Added by Zachary Ables
data "spotify_track" "rocketMan" {
  spotify_id = "3gdewACMIVMEWVbyb8O9sY"
}

## Added by Drew Grattafiori
data "spotify_track" "LeanOnMe_BillWithers" {
  spotify_id = "3M8FzayQWtkvOhqMn2V4T2"
}

## Added by Halle Teeter
data "spotify_track" "Sinceubeengone_KellyClarkson" {
  spotify_id = "04B9ThftHDqviE4uaUJMf1"
}

## Added by Corinne Parmalee
data "spotify_track" "valerie_amywinehouse" {
  spotify_id = "6kopmMZiyLmw7h66uXcXR7"
}

#### Playlsit ####

resource "spotify_playlist" "playlist" {
  name        = "Nashville 2022 Brownbag Playlist"
  description = "Learn more at https://github.com/mitchellciupak/spotify-playlist-with-terraform-brownbag"
  public      = true

  tracks = [
    data.spotify_track.ninetofive_dollyp.id,
    data.spotify_track.jolene_dollyp.id,
    data.spotify_search_track.queen_topsongs.tracks[0].id,
    data.spotify_search_track.queen_topsongs.tracks[1].id,
    data.spotify_search_track.queen_topsongs.tracks[2].id,    
    data.spotify_track.richgirl_hallandoates.id,
    data.spotify_track.cheeseburger_jimmybuffet.id,
    data.spotify_track.margaritaville_jimmybuffet.id
    data.spotify_track.cheeseburger_jimmybuffet.id,
    data.spotify_track.cheeseburger_jimmybuffet.id,
    data.spotify_track.callmeback_thestrokes.id,
    data.spotify_track.LeanOnMe_BillWithers.id,
    data.spotify_track" "BlindingLights_TheWeekend.id,
    data.spotify_search_track.queen_topsongs.tracks[2].id,
    data.spotify_search_track.queen_topsongs.tracks[2].id,
    data.spotify_track.dreams_fleetwoodmac.id,
    data.spotify_track.Sinceubeengone_KellyClarkson.id,
    data.spotify_track.cheeseburger_jimmybuffet.id,
    data.spotify_track.1985_bowlingforsoup.id
    data.spotify_track.likegold_vancejoy,
    data.spotify_track.highwaytohell_acdc.id,
    data.spotify_track.woman_twayne.id,
    data.spotify_track.callmeback_thestrokes.id,
    data.spotify_track.valerie_amywinehouse.id,
    data.spotify_track.ribs_lorde.id,
    data.spotify_track.DontBringMeDown_ELO.id,
    data.spotify_track.Goodbye_Stranger_Supertramp.id,
    data.spotify_track.callmeback_thestrokes.id,
  ]
}
