class AddGroupToProduct < ActiveRecord::Migration
  def change
    add_reference :products, :group, index: true, foreign_key: true
  end
end
