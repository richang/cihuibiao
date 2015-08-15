class AddFreqCountToEntries < ActiveRecord::Migration
  def change
    add_column :entries, :freq_count, :integer
  end
end