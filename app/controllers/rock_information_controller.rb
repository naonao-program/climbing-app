class RockInformationController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]
  def index
  end

  def new
    @rock = RockInformation.new
  end

  def create
    @rock = RockInformation.new(rock_information_params)
    if @rock.save
       redirect_to root_path
    else
      render :new
    end
  end

  private

  def rock_information_params
    params.require(:rock_information).permit(:name, :region_id, :rock_quality_id, :address, :season1_id, :season2_id, :night_id, :grade_sense_id, :people_day_id, :people_time_id, :people_vibe_id, :other).merge(user_id: current_user.id)
  end

end
