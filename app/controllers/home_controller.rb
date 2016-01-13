class HomeController < ApplicationController
  # GET /home
  def home
    @tasks = Task.all
  end
end