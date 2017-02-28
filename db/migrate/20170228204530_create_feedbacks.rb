class CreateFeedbacks < ActiveRecord::Migration[5.0]
  def change
    create_table :feedbacks do |t|
      t.string :content
      t.references :user
      
      t.timestamps
    end
  end
end
