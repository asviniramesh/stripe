class PlansController < ApplicationController
  def index
    @plans = Plan.order("amount")
  end
  
    def new
    @plan = Plan.new
    end

  def create
    @plan = Plan.new(params[:plan])
    if @plan.save
      redirect_to plans_path
    else
      redirect_to new_plan_path
    end
  end
end
