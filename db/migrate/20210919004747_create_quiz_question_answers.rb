class CreateQuizQuestionAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :quiz_question_answers do |t|
      t.string :status
      t.timestamps
    end
    add_reference :quiz_question_answers, :users, foreign_key: true
    add_reference :quiz_question_answers, :quiz_questions, foreign_key: true
    add_reference :quizzes, :users, foreign_key: true
    add_reference :quiz_questions, :quizzes, foreign_key: true

  end
end
