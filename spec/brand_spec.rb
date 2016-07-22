require('spec_helper')

describe(Brand) do

  it('validates presence of a brand') do
    brand = Brand.new({:name => ''})
    expect(brand.save()).to(eq(false))
  end


  it('converts the brand name to title case') do
    brand = Brand.create({:name => 'nike'})
    expect(brand.name()).to(eq('Nike'))
  end

  describe("#stores") do
  it('belongs to many stores') do
    test_brand = Brand.create({:name => 'Nike'})
    test_store1 = Store.create({:name => "Shoe Mill"})
    test_store2 = Store.create({:name => 'Payless Shoes'})
    test_store1.brands.push(test_brand)
    test_store2.brands.push(test_brand)
    expect(test_brand.stores()).to(eq([test_store1, test_store2]))
  end
end


end
