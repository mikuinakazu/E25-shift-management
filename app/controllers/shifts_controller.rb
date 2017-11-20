class ShiftsController < ApplicationController

  def show
    @date = params[:date]
    @shift = Shift.find(params[:id])
    @user_ids = @shift.meetings.pluck(:user_id)
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
