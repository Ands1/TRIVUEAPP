Rails.application.routes.draw do

  post 'quizzes/:quiz_id/takesurveys/submit' => 'quiz/takesurveys#submit', :as => 'save_answer'

  resources :quizzes do
    scope module: :quiz do
      resources :takesurveys
      resources :questions do
        scope module: :question do
          resources :answers
        end
      end

    end
  end

  devise_for :users
  root to: "home#index"
end
