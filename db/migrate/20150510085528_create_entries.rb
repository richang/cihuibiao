class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :traditional
      t.string :simplified
      t.string :pinyin
      t.integer :freq_count
    end

    add_index :entries, :traditional
    add_index :entries, :simplified
  end
end
