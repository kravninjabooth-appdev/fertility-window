# == Schema Information
#
# Table name: ovulation_calculators
#
#  id                       :integer          not null, primary key
#  approx_ovulation         :date
#  average_cycle            :integer
#  fertile_window_date1     :date
#  fertile_window_date2     :date
#  first_day_of_last_period :date
#  next_period              :date
#  pregnancy_test_day       :date
#  created_at               :datetime         not null
#  updated_at               :datetime         not null
#  user_id                  :integer
#
class OvulationCalculator < ApplicationRecord
end
