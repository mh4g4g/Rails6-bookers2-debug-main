class CreateFavorites < ActiveRecord::Migration[6.1]
  def change
    # create_table :favorites do |t|
    #   t.references :user, null: false, foreign_key: true
    #   t.references :book, null: false, foreign_key: true
    #   t.timestamps
    # end
    
     create_table :favorites do |t|
      t.integer :user_id
      t.integer :book_id
      t.timestamps
    end
  end
end
