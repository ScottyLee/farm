class CreateAreas < ActiveRecord::Migration
  def self.up
    create_table :areas do |t|

      t.timestamps
      t.column :storage, :int #Если склад не понуменклатурный то судя по всему должно быть так
      t.column :inc_button, :string
      t.column :dec_button, :string
      t.column :collect_button, :string
    end
  end

  def self.down
    drop_table :areas
  end
end
