class CreateQuizzes < ActiveRecord::Migration[6.1]
  def change
    create_table :quizzes do |t|
      t.string :name,              null: false, default: ""
      t.datetime :end_time
      t.timestamps
    end
  end
end
