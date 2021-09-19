class Quiz::Question::Answer < ApplicationRecord

    enum reply: {
        true: "1", 
        false: "0"    
      }
      

    belongs_to :user, class_name: "User", foreign_key: "users_id"
    belongs_to :quiz_question, class_name: "Quiz::Question", foreign_key: "quiz_questions_id"



end
