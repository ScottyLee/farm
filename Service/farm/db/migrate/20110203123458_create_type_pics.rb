class CreateTypePics < ActiveRecord::Migration
  def self.up
    create_table :type_pics do |t|
      t.timestamps
      t.column :item_type_id, :item_type;
      t.column :src, :string
      t.column :state, :int
    end
  end

  def self.down
    drop_table :type_pics
  end
end
