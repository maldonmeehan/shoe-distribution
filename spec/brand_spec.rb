require('spec_helper')

describe(Brand) do

  it('validates presence of a brand') do
    brand = Brand.new({:name => ''})
    expect(brand.save()).to(eq(false))
  end


  it('converts the name to title case') do
    brand = Brand.create({:name => 'shoe mill'})
    expect(brand.name()).to(eq('Shoe Mill'))
  end


end
