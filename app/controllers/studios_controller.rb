class StudiosController < ApplicationController

  def show
    @studio = Studio.find(params[:id])
    @actors = @studio.get_actors
  end

end
