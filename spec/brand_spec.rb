require('spec_helper')

describe(Brand) do
  it("validates that a brand name has been provided") do
    brand = Brand.new({:name => ""})
    expect(brand.save()).to(eq(false))
  end
end
