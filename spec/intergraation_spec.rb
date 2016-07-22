require('spec_helper')

describe('the home page route', :type => :feature) do
  it "takes us to the home page" do
    visit '/'
    expect(page).to have_content('Welcome')
  end
end

# describe('the add new store page route', {:type => :feature}) do
#   it('takes the user to the store form page') do
#     visit('/')
#     click_link('Add new store')
#     expect(page).to have_content('Add new store:')
#   end
# end
#
# describe('add a new store', {:type => :feature}) do
#   it('allows the user to add a store') do
#     visit('/')
#     click_link('Add new store')
#     fill_in('name', :with => 'Shoe Mill')
#     click_button('Add store')
#     expect(page).to have_content('Shoe Mill')
#   end
# end
#
# describe('the store errors route', {:type => :feature}) do
#   it('takes the user to the errors page') do
#     visit('/')
#     click_link('Add new store')
#     fill_in('name', :with => '')
#     click_button('Add store')
#     expect(page).to have_content('Oops there were some errors:')
#   end
# end
