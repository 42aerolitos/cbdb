class HomeController < ApplicationController

  def index
    @blogs = Blog.joins(:team).order("teams.position")

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @blogs }
    end
  end

end
