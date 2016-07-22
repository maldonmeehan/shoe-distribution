require("spec_helper")

describe(Brand) do
  it("validates presence of a brand") do
    brand = Brand.new({:name => ''})
    expect(brand.save()).to(eq(false))
  end
end
