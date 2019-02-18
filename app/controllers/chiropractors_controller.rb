class ChiropractorsController < ApplicationController
  def show
@results=GoogleAdapter.get_places(params["search"])
render json: @results
  end

  def find

  end
  def coords
    @results=GoogleAdapter.get_places_by_coords(params)
    render json: @results

  end
  def create

  end
  def map
    key=ENV["GOOGLE_KEY"]
     name=params["name"].split(" ").join("+")
    gma="https://www.google.com/maps/embed/v1/place?key=#{key}&q=#{name}"
    render json: gma
  end

  def more
    @results=GoogleAdapter.get_more(params["place_id"])
    render json: @results
  end
end
