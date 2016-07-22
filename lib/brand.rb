require('pry')

# brand is ingredience

class Brand < ActiveRecord::Base
  has_and_belongs_to_many (:stores)
  validates(:name, {:presence => true, :length => {:maximum => 50 }})
  before_save(:title_case_name)

  scope(:not_done, -> do
    where({:done => false})
  end)

  private

  define_method(:title_case_name) do
    self.name = name.downcase.titleize
  end



end
