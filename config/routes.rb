Rails.application.routes.draw do
  resources :rounds
  resources :users
  
  post 'get_user_by_name' => "users#get_user_by_name"

  get 'get_questions' => 'rounds#get_questions'

end
