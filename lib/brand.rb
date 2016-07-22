require('pry')

class Brand < ActiveRecord::Base
  has_and_belongs_to_many (:recipes)
  # validates(:name, {:presence => true, :length => {:maximum => 50 }})
  #
  # scope(:not_done, -> do
  #   where({:done => false})
  # end)
end
