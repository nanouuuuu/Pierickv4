json.extract! poisson, :id, :name, :image, :price, :rarity, :description, :nutriscore, :created_at, :updated_at
json.url poisson_url(poisson, format: :json)
