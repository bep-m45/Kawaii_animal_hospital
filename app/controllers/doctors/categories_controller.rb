class Doctors::CategoriesController < ApplicationController
  
  def index
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
  def set_category
    @category = Category.find(params[:id])
  end

  def category_params
    params.require(:category).permit(:name)
  end
  
end
