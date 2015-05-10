class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :traditional
      t.string :simplified
      t.string :pinyin

      t.timestamps null: false
    end
  end
end
