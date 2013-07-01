class ChangeNameOrderInquizzes < ActiveRecord::Migration
  def change
    rename_column :exercises, :order, :orderNum
    rename_column :quizzes, :order, :orderNum
    rename_column :videos, :order, :orderNum
  end
end
