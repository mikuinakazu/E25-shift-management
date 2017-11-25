class ShiftTimesController < ApplicationController

  def show
    @shift = Shift.find(params[:id])
    @date = params[:date]
    @shift_time = ShiftTime.find(params[:id])
    @user_ids = @shift_time.shifts.pluck(:user_id)
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
