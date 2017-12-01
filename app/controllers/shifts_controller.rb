class ShiftsController < ApplicationController

  def index
    @shifts = Shift.all.includes(:user, :shift_time)
  end

  def new
    @new_shift = Shift.new
    @date = params[:date]
    date = "#{@date}\s00:00:00"
    @shifts = Shift.where(start_time: date)
    @shift_times = ShiftTime.all.map{|st| ["#{st.start_time}" + "-" + "#{st.end_time}", st.id]}
  end

  def create
    shift = params.require(:shift).permit(:start_time, :shift_time_id).merge(user_id: current_user.id, name: current_user.name)
    Shift.create(shift)
  end

  def show
    @shift = Shift.find(params[:id])
    @shift_time = @shift.shift_time
  end

  def edit
    @shift = Shift.find(params[:id])
    @shift_times = ShiftTime.all.map{|st| ["#{st.start_time}" + "-" + "#{st.end_time}", st.id]}
  end

  def update
    shift = Shift.find(params[:id])
    if shift.user_id == current_user.id
    shift.update(update_params)
    end
  end

  def destroy
    shift = Shift.find(params[:id])
    if shift.user_id == current_user.id
    shift.destroy
  end

end


  private

   def shift_params
    params.permit(:name, :start_time, :shift_time_id)
   end

   def update_params
    params.require(:shift).permit(:shift_time_id)
   end

  end

