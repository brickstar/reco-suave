class TasteDiveService
  def initialize(params)
    @params = params
    @conn = Faraday.new(url: 'https://tastedive.com')
  end

  def raw_recommendations(params)
    get_url("/api/similar?q=#{@params}&k=#{ENV["TASTE_DIVE_KEY"]}&verbose=1")
  end

  private

  def get_url(url)
    response = @conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end
end
