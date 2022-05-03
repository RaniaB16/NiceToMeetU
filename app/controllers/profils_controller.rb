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
    # Profil est un super params créé par rails
    # (paremetre principal diff de params inbriqué)
    # Plutôt que récuperer les infos 1 par 1
    # On appelle les params de Profil en récupèrant le hash
    # On appelle uniquement les strong params pour éviter ajout de tout autre
    # cf PRIVATE ci-dessous
    Profil.create(profil_params)
    # Pour eviter de creer template Création. Rediriger
    redirect_to profils_path
  end

  def edit
    @profil = Profil.find_by(user_id: current_user.id)
  end

  def update
    @profil = Profil.find_by(user_id: current_user.id)
    @profil.update(profil_params)
    redirect_to profils_path

  end

  def destroy
    @profil = Profil.find_by(user_id: current_user.id)
    @profil.destroy
    redirect_to profils_path
  end

  private

  def profil_params
    # Syntax à respecter
    params.require(:profil).permit(:nickname, :actual_job, :company, :description, :dream_job)
  end

end
