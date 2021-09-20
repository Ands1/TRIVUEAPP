class Quiz::Question::Answer < ApplicationRecord

    enum reply: {
        true: "1", 
        false: "0"    
      }
      
    validates :user, uniqueness: { scope: :quiz_question, message: 'already answer this question'}
    validates :status, presence: true, allow_blank: false

    belongs_to :user, class_name: "User", foreign_key: "users_id"
    belongs_to :quiz_question, class_name: "Quiz::Question", foreign_key: "quiz_questions_id"



end
