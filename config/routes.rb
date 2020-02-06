Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'main#index'
  get "main/quiz" => "main#quiz"
  #ネストして、どのquestionについてのannswerかわかるように
  resources :questions do
    resources :answer
  end

end
