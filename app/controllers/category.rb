get '/category' do
  # Look in app/views/index.erb
  erb :"category/index"
end

get '/category/all' do
  @category = Category.all
  erb :"category/index"
end

get '/category/new' do
  @category = Category.new

  erb :"category/new"
end

post '/category/create' do
  @category = Category.create(title: params['title'])
  erb :"category/post"
end