class CreateWorkplaces < ActiveRecord::Migration[7.0]
  def change
    create_table :workplaces do |t|
      t.string :name
      t.integer :hourly_rate
      t.integer :transport_fee

      t.timestamps
    end
  end
end
