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
