require('spec_helper')

describe(Store) do
  it("validates that a store name has been provided") do
    store = Store.new({:name => ""})
    expect(store.save()).to(eq(false))
  end
end
