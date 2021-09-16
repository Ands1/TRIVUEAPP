Rails.application.routes.draw do
  namespace :users do
    namespace :quiz do
      resources :answers
    end
  end
  

  resources :quizzes do
    scope module: :quiz do
      resources :questions
    end
  end

  devise_for :users
  root to: "home#index"
end
