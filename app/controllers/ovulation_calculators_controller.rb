class OvulationCalculatorsController < ApplicationController
  def index
    matching_ovulation_calculators = OvulationCalculator.all

    @list_of_ovulation_calculators = matching_ovulation_calculators.order({ :created_at => :desc })

    render({ :template => "ovulation_calculators/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_ovulation_calculators = OvulationCalculator.where({ :id => the_id })

    @the_ovulation_calculator = matching_ovulation_calculators.at(0)

    render({ :template => "ovulation_calculators/show.html.erb" })
  end

  def create
    the_ovulation_calculator = OvulationCalculator.new
    the_ovulation_calculator.user_id = params.fetch("query_user_id")
    the_ovulation_calculator.first_day_of_last_period = params.fetch("query_first_day_of_last_period")
    the_ovulation_calculator.fertile_window_date1 = params.fetch("query_fertile_window_date1")
    the_ovulation_calculator.approx_ovulation = params.fetch("query_approx_ovulation")
    the_ovulation_calculator.next_period = params.fetch("query_next_period")
    the_ovulation_calculator.pregnancy_test_day = params.fetch("query_pregnancy_test_day")
    the_ovulation_calculator.fertile_window_date2 = params.fetch("query_fertile_window_date2")
    the_ovulation_calculator.average_cycle = params.fetch("query_average_cycle")

    if the_ovulation_calculator.valid?
      the_ovulation_calculator.save
      redirect_to("/ovulation_calculators", { :notice => "Ovulation calculator created successfully." })
    else
      redirect_to("/ovulation_calculators", { :alert => the_ovulation_calculator.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_ovulation_calculator = OvulationCalculator.where({ :id => the_id }).at(0)

    the_ovulation_calculator.user_id = params.fetch("query_user_id")
    the_ovulation_calculator.first_day_of_last_period = params.fetch("query_first_day_of_last_period")
    the_ovulation_calculator.fertile_window_date1 = params.fetch("query_fertile_window_date1")
    the_ovulation_calculator.approx_ovulation = params.fetch("query_approx_ovulation")
    the_ovulation_calculator.next_period = params.fetch("query_next_period")
    the_ovulation_calculator.pregnancy_test_day = params.fetch("query_pregnancy_test_day")
    the_ovulation_calculator.fertile_window_date2 = params.fetch("query_fertile_window_date2")
    the_ovulation_calculator.average_cycle = params.fetch("query_average_cycle")

    if the_ovulation_calculator.valid?
      the_ovulation_calculator.save
      redirect_to("/ovulation_calculators/#{the_ovulation_calculator.id}", { :notice => "Ovulation calculator updated successfully."} )
    else
      redirect_to("/ovulation_calculators/#{the_ovulation_calculator.id}", { :alert => the_ovulation_calculator.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_ovulation_calculator = OvulationCalculator.where({ :id => the_id }).at(0)

    the_ovulation_calculator.destroy

    redirect_to("/ovulation_calculators", { :notice => "Ovulation calculator deleted successfully."} )
  end
end
