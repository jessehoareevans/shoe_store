require("bundler/setup")
Bundler.require(:default)

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }


get('/') do
  erb(:index)
end

get('/brand') do
  @brands = Brand.all()
  @stores = Store.all()
  erb(:brand)
end

get('/error') do
  @brand = Brand.all()
  erb(:brand_error)
end

get('/brand/view') do
  @brands = Brand.all()
  erb(:brand_view)
end

get('/brand/:id') do
  @store = Store.all
  @brand = Brand.find(params.fetch("id").to_i())
  erb(:brand_edit)
end

post('/brand') do
  brand_type = params.fetch('brand_type')
  brand_price = params.fetch('brand_price')
  @brand = Brand.new({:name => brand_type, :price => brand_price})

  if @brand.save()
    erb(:index)
  else
    erb(:brand_error)
  end
end

patch('/brand/:id') do
  brand_type = params.fetch('brand_type')
  brand_price = params.fetch('brand_price')
  @brand = Brand.find(params.fetch("id").to_i())
  @brand.update({:name => brand_type, :price => brand_price})
  erb(:index)
end

delete('/brand/:id') do
  @brand = Brand.find(params.fetch("id").to_i())
  @brand.delete()
  erb(:index)
end

get('/store') do
  @stores = Store.all()
  @brands = Brand.all()
  erb(:store)
end

post('/store') do
  store_name = params.fetch('store_name')
  @store = Store.new({:name => store_name})
  if @store.save()
    erb(:index)
  else
    erb(:store_error)
  end
end

get('/store/:id') do
  @store = Store.find(params.fetch("id").to_i())
  erb(:store_edit)
end

delete('/store/:id') do
  @store = Store.find(params.fetch("id").to_i())
  @store.delete()
  erb(:index)
end

patch('/store/:id') do
  store_name = params.fetch('store_name')
  @store = Store.find(params.fetch("id").to_i())
  @store.update({:name => store_name})
  erb(:index)
end
