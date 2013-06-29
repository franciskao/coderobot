class CreateChoices < ActiveRecord::Migration
  def change
    create_table :choices do |t|
      t.integer :index
      t.text :body
      t.boolean :isAnswer
      t.references :quiz

      t.timestamps
    end
    add_index :choices, :quiz_id
  end
end
