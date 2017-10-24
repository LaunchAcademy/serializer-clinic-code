class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.text :body
      t.belongs_to :book
      t.belongs_to :user
      
      t.timestamps
    end
  end
end
