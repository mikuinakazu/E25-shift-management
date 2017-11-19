class UsersController < ApplicationController

  def show
    @date = User.find(params[:id]).meetings.shift.start_end_time
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
