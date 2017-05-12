require("bundler/setup")
Bundler.require(:default)

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }


get('/') do
  erb(:index)
end

get("/brands") do
  @brands = Store.all()
  erb(:brands)
end

get("/stores") do
  @stores = Store.all()
  erb(:stores)
end

post("/brands") do
  name = params.fetch("brand_name")
  Store.create({:name => name})
  redirect("/brands")
end

post("/stores") do
  name = params.fetch("brand_name")
  Brand.create({:name => name})
  redirect("/stores")
end

get("/brands/:id") do
  @brand = Store.find(params.fetch("id").to_i())
  if @brand.store_id
    @store = Project.find(@brand.store_id)
  else
    @store = nil
  end
  @stores = Project.all
  erb(:brand)
end

get("/stores/:id") do
  @store = Project.find(params.fetch("id").to_i())
  @brands = Store.all
  erb(:store)
end

patch("/brands/:id") do
  store_id = params.fetch("store_id").to_i()
  @brand = Store.find(params.fetch("id").to_i())
  @brand.update({:store_id => store_id})
  redirect back
end

patch("/stores/:id") do
  brand = Store.find(params.fetch("brand_id").to_i())
  @store = Project.find(params.fetch("id").to_i())
  @store.brands.push(brand)
  redirect back
end
