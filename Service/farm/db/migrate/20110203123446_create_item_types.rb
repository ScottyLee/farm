class CreateItemTypes < ActiveRecord::Migration
  def self.up
    create_table :item_types do |t|

      t.timestamps
      t.column :name, :string;
      t.column(:maxstate, :int);
    end
  end

  def self.down
    drop_table :item_types
  end
end
