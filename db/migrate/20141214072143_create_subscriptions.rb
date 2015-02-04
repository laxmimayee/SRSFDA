class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.string :subscription_type
      t.float :price

      t.timestamps
    end
  end
end
