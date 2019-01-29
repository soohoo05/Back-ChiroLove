class ChiropractorsController < ApplicationController
  def show
@results=GoogleAdapter.get_places("dummy")
render json: @results
  end

  def find

  end

  def create

  end
end
