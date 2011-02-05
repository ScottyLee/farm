class AreaItem < ActiveRecord::Base
  belongs_to :area;
  belongs_to :item_type;

  def inc_state
    if (self.state < self.maxstate)
      self.state+=1;
      self.save!();
    end
  end

  def dec_state
    if (self.state > 0)
      self.state-=1;
      self.save!();
    end
  end
end
