class ChiropractorsController < ApplicationController
  def show
@results=GoogleAdapter.get_places("dummy")
render json: @results
  end

  def find

  end

  def create

  end
  def map
    lat=params["lat"]
    lng=params["lng"]
    gma="https://maps.google.com/maps?q="+lat+","+lng+"&hl=es\;z=14&amp\;&output=embed"
    render json: gma
  end
end
