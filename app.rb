require("bundler/setup")
Bundler.require(:default)

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get ('/') do
  erb(:index)
end

get('/stores/new') do
  erb(:store_form)
end

get('/stores') do
  @stores = Store.all()
  erb(:stores)
end

post('/stores') do
  name = params.fetch("name")
  @store = Store.new({:name => name, :id => nil})
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
