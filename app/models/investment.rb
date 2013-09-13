class Investment < ActiveRecord::Base
  validates_presence_of :cost_of_property, :sale_value
  
  def calculate_retrun_of_investment
    sale_value = self.sale_value
    square_feet = self.square_feet
    cost = self.cost_of_property
    roi = ((sale_value - cost_of_property)/cost_of_property)*100
    return roi.round(2)
  end

  def calculate_square_feet_profit
    sale_value = self.sale_value
    square_feet = self.square_feet
    cost = self.cost_of_property
    roi = ((sale_value - cost_of_property)/cost_of_property)*100
    sf = (sale_value - cost_of_property)/square_feet
    return sf.round(2) 
  end

end
