class AddBooklocationToProducts < ActiveRecord::Migration
  def change
    add_column :products, :book_location, :string
  end
end
