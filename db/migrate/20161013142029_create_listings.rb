class CreateListings < ActiveRecord::Migration[5.0]
  def change
    create_table :listings do |t|
      ## Listing Information
      t.string :title
      t.string :description
      t.integer :price

      ## User Information
      t.integer :user_id

      ## Listing Location
      t.string :street_address
      t.integer :street_number
      t.string :town_city
      t.string :postal_code
      t.float :lng
      t.float :lat
      t.string :location

      t.timestamps
    end
  end
end
