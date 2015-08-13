class CreateDefinitions < ActiveRecord::Migration
  def change
    create_table :definitions do |t|
      t.string   :definition
      t.integer  :count
      t.integer  :entry_id
    end

    add_index :definitions, :entry_id
  end
end