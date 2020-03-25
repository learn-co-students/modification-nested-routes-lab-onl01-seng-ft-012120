module SongsHelper

    def artist_select(song, artists)
        if song.artist.nil?
            select_tag "song[artist_id]", options_from_collection_for_select(artists, :id, :name)
            
        else 
            song.artist.name
        end
    end
end
