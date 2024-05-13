class CreateIncomes < ActiveRecord::Migration[7.0]
  def change
    create_table :incomes do |t|
      t.integer :month
      t.integer :year
      t.decimal :amount
      t.decimal :goal_amount

      t.timestamps
    end
  end
end
