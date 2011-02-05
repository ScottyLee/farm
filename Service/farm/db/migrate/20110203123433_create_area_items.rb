class CreateAreaItems < ActiveRecord::Migration
  def self.up
    create_table :area_items do |t|

      t.timestamps
      t.column(:area_id, :area);
      t.column(:item_type_id, :item_type);
      t.column(:x, :int);
      t.column(:y, :int);
      t.column(:state, :int);
      t.column(:maxstate, :int);
    end
  end

  def self.down
    drop_table :area_items
  end
end
