class CreateStorycomments < ActiveRecord::Migration[5.0]
  def change
    create_table :storycomments do |t|
      t.string :content

      t.references :user
      t.references :story

      t.timestamps
    end
  end
end
