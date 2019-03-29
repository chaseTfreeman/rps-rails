Rails.application.routes.draw do
  root to: redirect('/games')
  resources :games, only: [:index]
  get '/curb_throw' => 'request#curb_throw', as:'/curb_throw'
end
