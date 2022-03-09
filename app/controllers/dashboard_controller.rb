class DashboardController < ApplicationController
  def index
  end

  def getCustomerData
    customer = Customer.find(params[:id])
    respond_to do |format|
      format.json { render json: customer.to_json(:include => [:quotes]) }
    end
  end
end
