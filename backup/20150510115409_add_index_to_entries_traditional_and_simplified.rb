class AddIndexToEntriesTraditionalAndSimplified < ActiveRecord::Migration
  def change
    add_index :entries, :traditional
    add_index :entries, :simplified
  end
end
