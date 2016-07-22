require('pry')

# store is recipe

class Store < ActiveRecord::Base
  has_and_belongs_to_many(:brands)
  validates(:name, {:presence => true, :length => {:maximum => 50 }})

  scope(:not_done, -> do
    where({:done => false})
  end)
end
