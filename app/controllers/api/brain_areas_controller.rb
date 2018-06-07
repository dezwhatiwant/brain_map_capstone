class Api::BrainAreasController < ApplicationController
  def index
    @brain_areas = BrainArea.all

    render 'index.json.jbuilder'
  end

  def show
    brain_area_id = params[:id]
    @brain_area = BrainArea.find(brain_area_id)
    render 'show.json.jbuilder'
  end
end