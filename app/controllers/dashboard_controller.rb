class DashboardController < ApplicationController
  def home
  end
  def search
    @user = Octokit.user params[:q]
  end
end
