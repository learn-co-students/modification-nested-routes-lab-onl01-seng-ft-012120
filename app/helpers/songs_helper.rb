module SongsHelper
  def artist_select(params)
     if params[:artist_id] 
     hidden_field_tag( 'song[artist_name]', Artist.find_by(id: params[:artist_id]) )
   else 
     label_tag('artist_name', 'Artist name:')
     select_tag('song[artist_id]', options_from_collection_for_select(Artist.all, :id, :name) )
   end 
  end
end
