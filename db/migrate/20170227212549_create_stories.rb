class CreateStories < ActiveRecord::Migration[5.0]
  def change
    create_table :stories do |t|
      t.string :title
      t.string :content
      t.string :image

      t.references :user
      t.references :community

      t.timestamps
    end
  end
end
