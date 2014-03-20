module HelloBlock::Request
  extend self

  BASE = "https://#{HelloBlock.network}.helloblock.io/#{HelloBlock.version}"
  PRC = "https://#{HelloBlock.network}.helloblock.io/q"

  def post(endpoint, body: {})
    # ensure / at end of endpoint
    response = HTTParty.post("#{BASE}#{endpoint}", body: body.to_query)

    # TODO: Better Handling
    if response.code !== 200
      p response.body
      raise Error
    end
    return response["data"]
  end

  def get(endpoint, query: {})
    response = HTTParty.get("#{BASE}#{endpoint}", query: query)

    # TODO: Better Handling
    if response.code !== 200
      p response.body
      raise Error
    end
    return response["data"]
  end

end
