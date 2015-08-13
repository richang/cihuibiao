class AddCountToEntries < ActiveRecord::Migration
  def change
    add_column :entries, :count, :integer
  end
end