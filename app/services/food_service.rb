class FoodService
  def conn
    conn = Faraday.new(url: "https://api.nal.usda.gov/fdc/v1/foods/") do |faraday|
      faraday.params["api_key"] = Rails.application.credentials.food[:key]
    end
  end

  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def get_search(n1, n2)
   get_url( "https://api.nal.usda.gov/fdc/v1/foods/search?api_key=aGJwpNSkIRkbH9rZ6IRWxl0Xw3T6QTdBglV7Mghv&query=#{n1}%20#{n2}")
  end
end