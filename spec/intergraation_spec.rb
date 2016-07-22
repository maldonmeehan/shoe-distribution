require('spec_helper')

describe('the home page route', :type => :feature) do
  it "takes us to the home page" do
    visit '/'
    expect(page).to have_content('Welcome')
  end
end

describe('the add new store route', {:type => :feature}) do
  it('takes the user to the store form page') do
    visit('/')
    click_link('Add new store')
    expect(page).to have_content('Add new store:')
  end
end
