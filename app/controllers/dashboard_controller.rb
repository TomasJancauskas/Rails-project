class DashboardController < ApplicationController
  def home
  end
  def search
    @user = Octokit.user params[:q]
    @rel = Octokit.commits("tomasjancauskas/easyMetrics", "Development", :since => "2012-09-28T00:00:00+00:00").length
  end
end
