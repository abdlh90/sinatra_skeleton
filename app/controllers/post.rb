
get '/post' do
  # Look in app/views/index.erb
  erb :"post/post"
end

get '/post/all' do
  @posts = Post.all
  erb :"post/index"
end

get '/post/new' do
  @post = Post.new
  erb :"post/new"
end

post '/post/create' do
  category = Category.find(params['category_id'])
  @post = category.posts.create(description: params['description'])
  erb :"post/show"
end

get '/post/:id' do
  @post = Post.find(params[:id])
  erb :"post/find_id"
end

post '/post/update' do
  @post = Category.post.update(description: params['description'])
  erb :"post/update_id"
end