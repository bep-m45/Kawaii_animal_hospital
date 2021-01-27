class Doctors::NoticesController < ApplicationController
  def index
  end
  
  def show
  end
  
  def new
    @notice = Notice.new
  end
  
  def create
    @notice = Notice.new(params[:id])
  end
  
  def edit
  end
  
  def update
  end
  
  def destroy
  end
  
  private
  
  def notice_pramas
    params.require(:notice).permit(:title, :text, :image, :category)
  end

end
