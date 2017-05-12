require('spec_helper')

describe(Brand) do
  it("validates that a brand name has been provided") do
    brand = Brand.new({:name => ""})
    expect(brand.save()).to(eq(false))
  end

  it("converts the name to capitalize the first letter") do
    brand = Brand.create({:name => "nike"})
    expect(brand.capitalize()).to(eq("Nike"))
  end
end
