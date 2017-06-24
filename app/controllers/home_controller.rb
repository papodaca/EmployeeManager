class HomeController < ApplicationController
  def index()
    @title = "Home"
    @organizations = Organization.all
  end
end
