class StaticPagesController < ApplicationController
  def home
    params[:active] = 'home'
  end

  def help
    params[:active] = 'help'
    @answer = params[:q]
  end
  
  def about
    params[:active] = 'about'
  end
end
