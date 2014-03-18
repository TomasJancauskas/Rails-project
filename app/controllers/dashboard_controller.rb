class DashboardController < ApplicationController
  def home
  end

  def search
    n = params[:days].to_i
    @commits = Array.new
    client = Octokit::Client.new \
    :client_id     => ENV["GIT_APP_ID"],
    :client_secret =>  ENV["GIT_APP_SECRET"]
    if client.repository?( params[:user] + '/' + params[:repo])
      n.times do |i|
        @commits[i] = [ Date.today - (n-i).days ,client.commits_on(params[:user] + '/' + params[:repo], Date.today - (n-i).days, params[:branch]).length ]
      end
    else
      redirect_to :root
      flash[:alert]= "Repository was not found"     
    end
    @repos = client.list_repositories('tomasjancauskas');
  end
end
