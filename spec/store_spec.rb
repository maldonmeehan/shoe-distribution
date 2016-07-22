require("spec_helper")

describe(Store) do
  it('validates presence of a store') do
    store = Store.new({:name => ''})
    expect(store.save()).to(eq(false))
  end





end
