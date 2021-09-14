class CreateUserQuizAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :user_quiz_answers do |t|
      t.boolean :status
      
      t.timestamps
    end
    add_reference :quizzes, :users, foreign_key: true
    add_reference :quiz_questions, :quizzes, foreign_key: true
    add_reference :user_quiz_answers, :quiz_questions, foreign_key: true
    add_reference :user_quiz_answers, :users, foreign_key: true
  end
end
