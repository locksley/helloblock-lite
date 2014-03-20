module HelloBlock::Block
  extend self

  RESOURCE = "/blocks"

  def get(block_id)
    res = HelloBlock::Request.get("#{RESOURCE}/#{block_id}")
    res["block"]
  end

  def get_transactions(block_id, queries = {})
    res = HelloBlock::Request.get("#{RESOURCE}/#{block_id}/transactions", query: queries)
    res["transactions"]
  end

  def get_latest(queries = {})
    res = HelloBlock::Request.get("#{RESOURCE}/latest", query: queries)
    res["blocks"]
  end

end
