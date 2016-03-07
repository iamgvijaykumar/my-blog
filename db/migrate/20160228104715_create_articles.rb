class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :description
      t.string :timestamps

      t.timestamps null: false
    end
  end
end
