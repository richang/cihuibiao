class RemoveCountFromEntries < ActiveRecord::Migration
  def change
    remove_column :entries, :count, :integer
    remove_column :entries, :created_at, :datetime
    remove_column :entries, :updated_at, :datetime
  end
end