require("bundler/setup")
Bundler.require(:default)

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get ('/') do
  erb(:index)
end

get('/stores/new') do
  @brands = Brand.all()
  erb(:store_form)
end

get('/stores') do
  @stores = Store.all()
  erb(:stores)
end

post('/stores') do
  name = params.fetch('name')
  @store = Store.new({:name => name})
  @stores = Store.all()
  if @store.save()
    erb(:stores)
  else
    erb(:errors)
  end
end

get('/stores/:id') do
  @store = Store.find(params.fetch("id").to_i())
  erb(:store)
end

get('/stores/:id/edit') do
  @store = Store.find(params.fetch("id").to_i())
  erb(:store_edit)
end

patch('/stores/:id/edit') do
  name = params.fetch('name')
  @store = Store.find(params.fetch("id").to_i())
  @store.update({:name => name})
  erb(:store)
end

delete('/stores/:id/delete') do
  @store = Store.find(params.fetch('id').to_i())
  @store.delete()
  @stores = Store.all()
  erb(:stores)
end

get('/brands/new') do
  erb(:brand_form)
end

get ('/brands') do
  @brands = Brand.all()
  erb(:brands)
end

post('/brands') do
  name = params.fetch('name')
  @brand = Brand.new({:name => name})
  @brands = Brand.all()
  if @brand.save()
    erb(:brands)
  else
    erb(:brand_errors)
  end
end

get('/brands/:id') do
  @brand = Brand.find(params.fetch("id").to_i())
  erb(:brand)
end

get('/brand_add_store/:id') do
  @store = Store.find(params.fetch('id').to_i())
  @brands = Brand.all()
  erb(:brand_add_store)
end

patch('/stores/:id/brands') do
  @store = Store.find(params.fetch('id').to_i())
  new_brand_id = params.fetch('brand')
  @brand = Brand.find(new_brand_id)
  if ! @store.brands.include?(@brand)
    @store.brands.push(@brand)
  end
  if @brand.save()
    erb(:store)
  else
    erb(:brand_errors)
  end
end
