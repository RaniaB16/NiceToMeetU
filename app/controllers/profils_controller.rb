class ProfilsController < ApplicationController

  def index
    @profils = Profil.where(user: current_user)
  end

  def new
    @profil = Profil.new
  end

  def show
    @profil = Profil.find(params[:id])
  end

  def create
    @profil = Profil.new(profil_params)
    @user = current_user
    @profil.user = @user
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def find_profil
    @profil = Profil.find(params[:id])
  end

  def party_params
    params.require(:profil).permit(:user_id, :full_name, :actual_job, :company, :description, :dream_job)
  end

end
