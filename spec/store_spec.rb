require("spec_helper")

describe(Store) do
  it('validates presence of a store') do
    store = Store.new({:name => ''})
    expect(store.save()).to(eq(false))
  end

  it('converts the store name to title case') do
    store = Store.create({:name => 'shoe mill'})
    expect(store.name()).to(eq('Shoe Mill'))
  end



end
