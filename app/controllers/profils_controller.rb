class ProfilsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @profils = Profil.all
  end

  def new
    @profil = Profil.new
  end

  def show
    @profil = Profil.find_by(user_id: current_user.id)
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def profil_params
    params.require(:profil).permit(:user_id, :full_name, :actual_job, :company, :description, :dream_job)
  end
end
