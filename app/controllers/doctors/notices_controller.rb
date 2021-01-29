class Doctors::NoticesController < ApplicationController
  
  def index
    @notices = Notice.all
    # @category = notice.category
    
  end
  def show
    @notice = Notice.find(params[:id])
    @category = Category.find(params[:id])
  end 
  
  def new
    @notice = Notice.new
  end
  
  def create
    @notice = Notice.new(notice_params)
    @notice.doctor_id = current_doctor.id
    if @notice.save
      redirect_to doctors_notice_path(@notice.id)
    else
      render "new"
    end  
  end
  
  def edit
    @notice = Notice.find(params[:id])
  end
  
  def update
    @notice = Notice.find(params[:id])
    if  @notice.update
     redirect_to doctors_notice_path(@notice.id)
    else  
      "edit"
    end  
  end
  
  def destroy
    @notice = Notice.find(params[:id])
    if @notice.destroy
      redirect_to doctors_notices_path
    else
      render "show"
    end  
  end
  
  private
  
  def notice_params
  # params.require(:notice).permit(:title, :body, :category_id, :doctor_id)
  params.permit(:title, :body, :category_id, :doctor_id)
  end
end
