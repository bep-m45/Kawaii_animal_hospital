class Doctors::NoticesController < ApplicationController
  def index
  end

  def show
    @notice = Notice.find(params[:id])
  end

  def new
    @notice = Notice.new
  end

  def create
    @notice = Notice.new(notice_params)
    @notice.save
    redirect_to notice_path(@notice.id)
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def notice_params
    params.require(:notice).permit(:title, :text, :image, :category)
  end

end
