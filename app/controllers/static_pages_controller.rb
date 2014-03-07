class StaticPagesController < ApplicationController
  before_filter :redirectt
  def home
    params[:active] = 'home'
  end
  def redirectt
    if user_signed_in?
      redirect_to dashboard_home_path
    end
  end
  
end
