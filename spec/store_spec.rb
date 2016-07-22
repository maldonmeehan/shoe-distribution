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

  describe("#brands") do
    it('belongs to many brands') do
      test_store = Store.create({:name => 'Shoe Mill'})
      test_brand1 = Brand.create({:name => 'Nike'})
      test_brand2 = Brand.create({:name => 'Converse'})
      test_brand1.stores.push(test_store)
      test_brand2.stores.push(test_store)
      expect(test_store.brands()).to(eq([test_brand1, test_brand2]))
    end
  end


end
