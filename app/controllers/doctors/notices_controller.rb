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
    redirect_to notices_path
    
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def notice_params
    params.permit(:title, :text)
  end

end
