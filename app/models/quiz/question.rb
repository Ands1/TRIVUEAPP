class Quiz::Question < ApplicationRecord
    enum status: {
        true: "1", 
        false: "0"    
      }
      belongs_to :quiz, foreign_key: "quizzes_id"
end
