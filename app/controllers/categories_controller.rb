class CategoriesController < ApplicationController
  def show
    @categorie = Categorie.find(params[:id])
  end

  def edit
    @categorie = Categorie.find(params[:id])
  end

  def index
    @categories = Categorie.all
  end

  def create
    @categorie = Categorie.new(categorie_params)


    if @categorie.save
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    @categorie = Categorie.find(params[:id])
    @categorie.destroy
    redirect_to root_path
  end

  def update
    @categorie = Categorie.find(params[:id])
    @categorie.update(categorie_params)
    redirect_to categorie_path(@categorie)
  end

  def new
    @categorie = categorie.newS
  end

  private

  def categorie_params
  params.require(:categorie).permit(:name)
end
end
