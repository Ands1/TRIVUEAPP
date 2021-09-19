class Quiz < ApplicationRecord
      belongs_to :user, foreign_key: "users_id"
      has_many :quiz_question, dependent: :delete_all, class_name: "Quiz::Question", foreign_key: "quizzes_id"
      validate :limit_date

      
      def limit_date
        if end_time < DateTime.now
            errors.add(:end_time, "Cannot select a date that already past :( ")
        end
    end
end
