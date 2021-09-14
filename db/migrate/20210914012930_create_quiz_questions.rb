class CreateQuizQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :quiz_questions do |t|
      t.string :question,              null: false, default: ""
      t.boolean :status,              null: false, default: ""
      t.timestamps
    end
  end
end
