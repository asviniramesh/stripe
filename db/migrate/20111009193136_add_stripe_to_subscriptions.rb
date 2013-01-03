class AddStripeToSubscriptions < ActiveRecord::Migration
  def change
    add_column :subscriptions, :stripe_customer_token, :string
    add_column :subscriptions, :name, :string
    add_column :subscriptions, :address_1, :string
    add_column :subscriptions, :address_2, :string
    add_column :subscriptions, :city, :string
    add_column :subscriptions, :state, :string
    add_column :subscriptions, :zipcode, :integer
    add_column :subscriptions, :country, :string
    add_column :subscriptions, :charge_date, :datetime
  end
end
