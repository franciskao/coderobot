class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.text :question
      t.text :answer
      t.references :course

      t.timestamps
    end
    add_index :exercises, :course_id
  end
end
