class NoticesController < ApplicationController
  def new
    @notice = Notice.new
  end
  
  def create
    @notice = Notice.new(notice_params)
    @notice.save
    redirect_to notice_path(@notice.id)
  end

  def index
    @notices = Notice.all
  end

  def edit
    @notice = Notice.find(params[:id])
  end
  
  def update 
    @notice = Notice.find(params[:id])
    @notice.update(notice_params)
    redirect_to notice_path(@notice.id)
  end
  def show
    @notice = Notice.find(params[:id])
  end
  
  private 
  
  def notice_params
    params.require(:notice).permit(:title, :body, :category_id, { images: [] })
  end
end
