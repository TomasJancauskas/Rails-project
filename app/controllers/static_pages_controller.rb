class StaticPagesController < ApplicationController
  def home
    params[:active] = 'home'
  end

  def help
    params[:active] = 'help'
  end
  
  def about
    params[:active] = 'about'
  end
end
