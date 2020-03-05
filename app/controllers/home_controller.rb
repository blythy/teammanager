class HomeController < ApplicationController
  def index
    @teams = Team.all
    @players = Player.all    
    @positions = Position.all

    respond_to do |format|
      format.html
    end
  end
end
