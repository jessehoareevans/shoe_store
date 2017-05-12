class AddBrandIdToStores < ActiveRecord::Migration[5.1]
  def change
    add_column(:stores, :brand_id, :integer)
  end
end
