Rails.application.routes.draw do
  # Posts
  ## Create
  get '/posts/new' => 'posts#new'
  post '/posts/create' => 'posts#create'  #처리하는 부분은 post로
  
  ## Read
  get '/posts/index' => 'posts#index'
  get '/posts/show/:post_id' => 'posts#show'
  
  ## Update
  get '/posts/edit/:post_id' => 'posts#edit'
  post '/posts/update/:post_id' => 'posts#update'
  
  ## Delete
  post '/posts/destroy/:post_id' => 'posts#destroy'
  
  
  # Comments
  ## Create
  post '/posts/show/:post_id/comments/create' => 'comments#create'
  
  ## Destroy
  post '/posts/show/:post_id/comments/destroy/:comment_id' => 'comments#destroy'
  
  get '/' => 'posts#main'
end
  
