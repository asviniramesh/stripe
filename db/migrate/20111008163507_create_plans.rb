class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.string :name
      t.string :description
      t.integer :amount
      t.string :interval
      t.integer :interval_count
      t.integer :trial_period_days
      t.string :charge_date_type
      t.boolean :livemode
      t.timestamps
    end
  end
end

