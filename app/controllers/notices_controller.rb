class NoticesController < ApplicationController
  
  def index
    @notices = Notice.all
    # @category = notice.category
    
  end
  def show
    @notice = Notice.find(params[:id])
    # @category = Category.find(params[:category_id])
  end 
  
  def new
    @notice = Notice.new
  end
  
  def create
    @notice = Notice.new(notice_params)
    if @notice.save
      redirect_to notice_path(@notice.id)
    else
      render "new"
    end  
  end
  
  def edit
    @notice = Notice.find(params[:id])
  end
  
  def update
    @notice = Notice.find(params[:id])
    if @notice.update
     redirect_to notice_path(@notice.id)
    else  
      "edit"
    end  
  end
  
  def destroy
    @notice = Notice.find(params[:id])
    @notice.destroy
      redirect_to notices_path
  end
  
  private
  
  def notice_params
  # params.require(:notice).permit(:title, :body, :category_id)
   params.permit(:title, :body, :category_id)
  end
end
