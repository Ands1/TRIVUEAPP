class Quiz < ApplicationRecord
    enum status: {
        true: "1", 
        false: "0"    
      }
      belongs_to :user, foreign_key: "users_id"
end
