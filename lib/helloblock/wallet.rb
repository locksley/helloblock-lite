module HelloBlock::Wallet
  extend self

  RESOURCE = "/wallet"

  def get(queries = {})
    res = HelloBlock::Request.get("#{RESOURCE}", query: queries)
    res
  end

end
