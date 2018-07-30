class Mall
  attr_reader :stores

  def initialize
    @stores = []
    @employees = []
  end

  def open_store(store)
    @stores << store
  end

end
