Rails.application.routes.draw do

  get '/' => 'site#home'
  get '/popular' => 'concerts#popular'
  resources :concerts do
    resources :comments
  end

  
end
