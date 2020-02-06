Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'main#index'
  get "main/quiz" => "main#quiz"
  get "main/result" => "main#result"
  #ネストして、どのquestionについてのannswerかわかるように
  # resources :quizzes do
  #   resources :answers
  # end
  resources :quizzes
  resources :answers
  resources :questions
end
