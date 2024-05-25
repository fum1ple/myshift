class CreateWorkplaces < ActiveRecord::Migration[7.0]
  def change
    create_table :workplaces do |t|
      t.string :name
      t.decimal :hourly_rate
      t.decimal :transportation_fee

      t.timestamps
    end
  end
end
