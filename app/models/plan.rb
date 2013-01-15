class Plan < ActiveRecord::Base
  has_many :users
  after_create :save_with_plan
   def save_with_plan
		if self.charge_date_type == "First of the month"
		    $charge_date = (Date.today.beginning_of_month.next_month.to_time+8.hours).to_i
	         end
	Stripe::Plan.create(amount: amount,interval: interval,name: name,currency: "usd",id: id,trial_period_days: trial_period_days) if valid?
    end
end
