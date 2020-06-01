Rails.application.routes.draw do
  resources :rounds
  resources :users
  # resources :welcome

  root 'welcome#index'
  post 'get_user_by_name' => "users#get_user_by_name"
  post 'get_questions' => 'rounds#get_questions'
  get 'get_categories' => 'rounds#get_categories'

end
