module HelloBlock::Faucet
  extend self

  RESOURCE = "/faucet"

  def unspents(queries = {})
    res = HelloBlock::Request.get("#{RESOURCE}", query: queries)
    res
  end

  def withdrawal(body = {})
    res = HelloBlock::Request.post("#{RESOURCE}/withdrawal", body: body)
    res
  end

end
