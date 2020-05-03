class CategoriesController < ApplicationController
  skip_before_action :authenticate_user!
  def show
    @categorie = Category.find(params[:id])
  end

  def edit
    @categorie = Category.find(params[:id])
  end

  def index
    @categories = Category.all
  end

  def create
    @categorie = Category.new(category_params)


    if @categorie.save
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    @categorie = Category.find(params[:id])
    @categorie.destroy
    redirect_to root_path
  end

  def update
    @categorie = Category.find(params[:id])
    @categorie.update(categorie_params)
    redirect_to categorie_path(@categorie)
  end

  def new
    @categorie = Category.new
  end

  private

  def category_params
  params.require(:category).permit(:name)
end
end
