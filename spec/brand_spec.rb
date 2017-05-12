require('spec_helper')

describe(Brand) do

  it("validates that a brand name has been provided") do
    brand = Brand.new({:name => ""})
    expect(brand.save()).to(eq(false))
  end

  it("ensures the length of name is at most 100 characters") do
    brand = Brand.new({:name => "a".*(101)})
    expect(brand.save()).to(eq(false))
  end

  it("converts the name to capitalize the first letter") do
    brand = Brand.create({:name => "nike"})
    expect(brand.name()).to(eq("Nike"))
  end
end
