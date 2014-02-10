class StaticPagesController < ApplicationController
  def home
    params[:active] = 'home'
  end
end
