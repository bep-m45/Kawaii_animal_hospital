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
  end

  def edit
  end

  def show
    @notice = Notice.find(params[:id])
  end
  
  private 
  
  def notice_params
    params.require(:notice).permit(:title, :body)
  end
end
