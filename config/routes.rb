Rails.application.routes.draw do
  namespace :api do
    get '/brains' => 'brain_areas#index'
    get '/brains/:id' => 'brain_areas#show'
  end
end
