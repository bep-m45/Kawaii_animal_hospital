class HomesController < ApplicationController
  def home
    @notice = Notice.first(5)
  end
  
  def trimming
  end
  
  def hotel
  end
  
  def information
  end
end