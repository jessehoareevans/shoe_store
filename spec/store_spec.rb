require('spec_helper')

describe(Store) do
  it("validates that a store name has been provided") do
    store = Store.new({:name => ""})
    expect(store.save()).to(eq(false))
  end

  it("ensures the length of name is at most 100 characters") do
    store = Store.new({:name => "a".*(101)})
    expect(store.save()).to(eq(false))
  end
end
