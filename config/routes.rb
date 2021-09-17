Rails.application.routes.draw do
  namespace :users do
    namespace :quiz do
      resources :answers
    end
  end

  post 'quizzes/:quiz_id/takesurveys/submit' => 'quiz/takesurveys#submit', :as => 'save_answer'

  resources :quizzes do
    scope module: :quiz do
      resources :takesurveys
      resources :questions
    end
  end

  devise_for :users
  root to: "home#index"
end
