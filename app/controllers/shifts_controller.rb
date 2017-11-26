class ShiftsController < ApplicationController

  before_action :detect_devise_variant

  def index
    @shifts = Shift.all.includes(:user, :shift_time)
  end

  def new
    @shift = Shift.new
  end

  def create
    shift = params.require(:shift).permit(:name, :start_time, :shift_time_id).merge(user_id: current_user.id)
    Shift.create(shift)
  end

  def show
    @shift = Shift.find(params[:id])
    @shift_time = @shift.shift_time
  end

  def edit
    @shift = Shift.find(params[:id])
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

   def detect_devise_variant  # (1)と同じ名前
    case request.user_agent
      when /iPad/
          request.variant = :tablet
      when /iPhone/
          request.variant = :mobile
      end
   end

  end

