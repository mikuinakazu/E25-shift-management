class ShiftsController < ApplicationController

  def index
    @shifts = Shift.all
    @shift = Shift.first
  end

  def show
    @date = params[:date]
    @shift_time = ShiftTime.find(params[:id])
    @user_ids = @shift_time.shifts.pluck(:user_id)
  end

  def edit
  end

  def update
  end

  def destroy
    shift = Shift.find(params[:id])
    shift.destroy
  end

end
