class CreateOperationTimes < ActiveRecord::Migration[5.0]
  def change
    create_table :operation_times do |t|
      t.references :shop, null: false
      t.string :open_time, null: false
      t.string :close_time, null: false
      t.integer :week_date, null: false, limit: 1
      t.timestamps
    end
  end
end
