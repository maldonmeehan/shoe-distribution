require('pry')

class Brand < ActiveRecord::Base
  has_and_belongs_to_many (:stores)
  validates(:name, {:presence => true, :length => {:maximum => 50 }})
  before_save(:title_case_name)

  private

  define_method(:title_case_name) do
    self.name = name.downcase.titleize
  end
end
