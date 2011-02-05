class ItemType < ActiveRecord::Base
  has_many :area_items;
  has_many :type_pics;
end
