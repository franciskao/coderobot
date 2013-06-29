class CreateQuizzes < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|
      t.string :title
      t.text :answer
      t.references :course

      t.timestamps
    end
    add_index :quizzes, :course_id
  end
end
