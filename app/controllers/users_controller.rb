class UsersController < ApplicationController
  def new
    plan = Plan.find(params[:plan_id])
    @user = plan.users.build
  end

  def create
    @user = User.new(params[:user])
    if @user.save_with_payment
      redirect_to @user, :notice => "Thank you for subscribing!"
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
  end
end
