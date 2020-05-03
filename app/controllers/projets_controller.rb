class ProjetsController < ApplicationController
  skip_before_action :authenticate_user!

  def show
    @projet = Projet.find(params[:id])
  end

  def edit
    @projet = Projet.find(params[:id])
  end

  def index
    @projets = Projet.all
  end

  def create
    @projet = Projet.new(projet_params)


    if @projet.save
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    @projet = Projet.find(params[:id])
    @projet.destroy
    redirect_to root_path
  end

  def update
    @projet = Projet.find(params[:id])
    @projet.update(projet_params)
    redirect_to projet_path(@projet)
  end

  def new
    @projet = Projet.new
  end

  private

  def projet_params
  params.require(:projet).permit(:name, :souscategory_id, :extrait, :details, :youtube, :site)
end
end
