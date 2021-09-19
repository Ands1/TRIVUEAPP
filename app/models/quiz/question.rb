class Quiz::Question < ApplicationRecord
    enum status: {
        true: "1", 
        false: "0"    
      }
      belongs_to :quiz, foreign_key: "quizzes_id"
      has_many :quiz_question_answers, dependent: :delete_all, class_name: "Quiz::Question::Answer", foreign_key: "quiz_questions_id"
end
