class GoogleAdapter
  def self.get_places(search)
    key=KeyAdapter.get_key()
    response = RestClient.get("https://maps.googleapis.com/maps/api/place/textsearch/xml?query=restaurants+in+Sydney&key=#{key}")
    json_response = JSON.parse(response.body)
    return json_response
  end
end
