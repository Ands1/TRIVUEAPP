class CreateUserQuizAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :user_quiz_answers do |t|
      t.boolean :status
      
      t.timestamps
    end

  end
end
