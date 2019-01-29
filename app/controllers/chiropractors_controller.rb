class ChiropractorsController < ApplicationController
  def show
@results=GoogleAdapter.get_places("dummy")
byebug
  end

  def find

  end

  def create

  end
end
