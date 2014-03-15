class DashboardController < ApplicationController
  def home
  end
  def search
    @user = Octokit.user params[:q]
    @rel = Octokit.commits("tomasjancauskas/easyMetrics", "Development", :since => "2014-03-10T00:00:00+00:00").length
  end
end
