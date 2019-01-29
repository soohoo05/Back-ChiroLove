class GoogleAdapter
  def self.get_places(search)
    key=ENV["GOOGLE_KEY"]
    response = RestClient.get("https://maps.googleapis.com/maps/api/place/textsearch/json?query=chiropractors+near+163-56+20th+rd+whitestone+ny+11357&key=#{key}")
    json_response = JSON.parse(response.body)
    return json_response
  end
end
