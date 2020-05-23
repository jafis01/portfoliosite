Rails.application.routes.draw do
  root :to => 'main#index'
  post  'inquiry'      =>  'inquirys#create'
end
