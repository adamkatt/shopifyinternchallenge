json.extract! shopifydb, :id, :treetype, :price, :location,:image, :inventory, :created_at, :updated_at, :tags
json.url shopifydb_url(shopifydb, format: :json)
