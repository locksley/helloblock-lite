module HelloBlock::Faucet
  extend self

  RESOURCE = "/faucet"

  def unspents(type: 1)
    res = HelloBlock::Request.get("#{RESOURCE}", query: {
      type: type
    })
    res["address"]
  end

  def withdrawal(to_address: nil, value: nil)
    res = HelloBlock::Request.post("#{RESOURCE}", body: {
      toAddress: to_address,
      value: value
    })
    res["transaction"]
  end

end
