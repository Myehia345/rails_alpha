class ArticleCategory < ActiveRecord::Migration
  def change
    create_table :article_categories do |t|
      t.integer :article_id
      t.integer :category_id
      t.timestamp
    end
  end
end
