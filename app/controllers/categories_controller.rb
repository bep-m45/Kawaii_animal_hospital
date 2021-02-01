class CategoriesController < ApplicationController
  
  def index
    @categories = Category.all
    @category = Category.new
  end  
  
  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to categories_path
    else
      @categories = Category.all
      render "index"
    end  
  end
  
  def edit
    @category = Category.find(params[:id])
  end  
  
  def update
    if @category.update(category_params)
      redirect_to categories_path
    else
      render "edit"
    end
  end
  
  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    redirect_to categories_path
  end
  
  private
  def set_category
    @category = Category.find(params[:id])
  end

  def category_params
    params.require(:category).permit(:name)
  end
  
end
