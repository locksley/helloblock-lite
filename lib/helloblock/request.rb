module HelloBlock::Request
  extend self

  BASE = "https://#{HelloBlock.network}.helloblock.io/#{HelloBlock.version}"
  PRC = "https://#{HelloBlock.network}.helloblock.io/q"

  def post(endpoint, body: {})
    # ensure / at end of endpoint
    response = HTTParty.post("#{BASE}#{endpoint}", body: body.to_query)

    raise Error unless response.code === 200
    return response
  end

  def get(endpoint, query: {})
    response = HTTParty.get("#{BASE}#{endpoint}", query: query)

    raise Error unless response.code === 200
    return response
  end

end
