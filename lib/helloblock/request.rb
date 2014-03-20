module HelloBlock::Request
  extend self

  def base
    "https://#{HelloBlock.network}.helloblock.io/#{HelloBlock.version}"
  end

  def post(endpoint, body: {})
    # ensure / at end of endpoint
    response = HTTParty.post("#{base()}#{endpoint}", body: body.to_query)

    # TODO: Better Handling
    if response.code != 200
      p response.body
      raise Error
    end
    return response["data"]
  end

  def get(endpoint, query: {})
    response = HTTParty.get("#{base()}#{endpoint}", query: query)

    # TODO: Better Handling
    if response.code != 200
      p response.body
      raise Error
    end
    return response["data"]
  end

end
