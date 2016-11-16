class AddsStatusToItem < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :available, :boolean, :default => 1
  end
end
