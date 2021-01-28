class Doctors::CategoriesController < ApplicationController
  
  def index
    @categories = Category.all
    @category = Category.new
    
    
  end  
  
  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to doctors_categories_path
    else
      render "index"
    end  
  end
  
  def edit
  end  
  
  def update
  end
  
  def destroy
  end
  
  private
  # def set_category
  #   @category = Category.find(params[:id])
  # end

  def category_params
    params.require(:category).permit(:name)
  end
  
end
