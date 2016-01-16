class HomeController < ApplicationController
  # GET /home
  def home
    @tasks = guest_user.tasks
  end
end