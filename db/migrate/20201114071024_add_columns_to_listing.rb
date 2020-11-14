class AddColumnsToListing < ActiveRecord::Migration[6.0]
  def change
    add_column :listings, :maker, :integer
    add_column :listings, :use, :integer
  end
end
