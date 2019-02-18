class GoogleAdapter
  def self.get_places(search)
    key=ENV["GOOGLE_KEY"]
    response = RestClient.get("https://maps.googleapis.com/maps/api/place/textsearch/json?query=chiropractors+near+#{search}&key=#{key}")
    json_response = JSON.parse(response.body)
    return json_response
  end

  def self.get_more(place_id)
    key=ENV["GOOGLE_KEY"]
    response = RestClient.get("https://maps.googleapis.com/maps/api/place/details/json?placeid=#{place_id}&key=#{key}")
    json_response = JSON.parse(response.body)
    return json_response
  end

  def self.get_places_by_coords(coords)
    key=ENV["GOOGLE_KEY"]
    response = RestClient.get("https://maps.googleapis.com/maps/api/place/textsearch/json?location=#{coords["lat"]},#{coords["long"]}&query=chiropractors&key=#{key}")
    json_response = JSON.parse(response.body)
    return json_response
  end
end
