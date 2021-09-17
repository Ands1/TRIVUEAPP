class CreateQuizQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :quiz_questions do |t|
      t.string :question,              null: false, default: ""
      t.string :status,              null: false, default: "True"
      t.timestamps
    end
  end
end
