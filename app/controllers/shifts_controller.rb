class ShiftsController < ApplicationController

  def show
    @shift = Shift.find(params[:id]).start_end_time
    @date = params[:date]
  end

end
