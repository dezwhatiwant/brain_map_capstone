Rails.application.routes.draw do
  namespace :api do
    get '/brain' => 'brain_areas#index'
    get '/brain/:id' => 'brain_areas#show'
    get '/articles' => 'articles#index'
  end
end
