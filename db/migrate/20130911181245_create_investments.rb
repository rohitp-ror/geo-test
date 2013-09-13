class CreateInvestments < ActiveRecord::Migration
  def change
    create_table :investments do |t|
      t.float :square_feet
      t.float :cost_of_property
      t.float :sale_value
      t.float :roi_amount
      t.float :sf_profit
       
      t.timestamps
    end
  end
end
