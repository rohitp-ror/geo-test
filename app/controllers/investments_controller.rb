class InvestmentsController < ApplicationController
  before_action :get_data, only: [:show, :edit, :update]

  def edit
  end

  def update
    if @investment.update(set_params)
      @investment.roi_amount = @investment.calculate_retrun_of_investment
      @investment.sf_profit = @investment.calculate_square_feet_profit
      @investment.save!
       
      redirect_to root_url, notice: 'Calculate Return of Investment'
    else
      render action: 'show'
    end
  end

  private
    def get_data
      @investment = Investment.first
    end

    def set_params
      params.require(:investment).permit(:sqaure_feet, :cost_of_property, :sale_value)
    end
end
