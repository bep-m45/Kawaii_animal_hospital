class Doctors::NoticesController < ApplicationController
  
  private
  def notice_params
  params.require(:notice).permit(:title, :body, :category_id, :image)
  end
end
