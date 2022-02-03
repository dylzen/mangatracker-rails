json.extract! manga, :id, :title, :pub_vols, :own_vols, :mis_vols, :status, :collection, :created_at, :updated_at
json.url manga_url(manga, format: :json)
