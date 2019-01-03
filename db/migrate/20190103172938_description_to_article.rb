class DescriptionToArticle < ActiveRecord::Migration
  def change
    add_column :articles , :descripton ,:text
    add_column :articles , :created_at ,:datetime
    add_column :articles , :updated_at ,:datetime
  end
end
