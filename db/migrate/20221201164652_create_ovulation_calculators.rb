class CreateOvulationCalculators < ActiveRecord::Migration[6.0]
  def change
    create_table :ovulation_calculators do |t|
      t.integer :user_id
      t.date :first_day_of_last_period
      t.date :fertile_window_date1
      t.date :approx_ovulation
      t.date :next_period
      t.date :pregnancy_test_day
      t.date :fertile_window_date2
      t.integer :average_cycle

      t.timestamps
    end
  end
end
