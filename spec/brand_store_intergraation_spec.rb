require('spec_helper')

describe('the home page route', :type => :feature) do
  it "takes us to the home page" do
    visit '/'
    expect(page).to have_content('Welcome')
  end
end

describe('the add new store page route', {:type => :feature}) do
  it('takes the user to the store form page') do
    visit('/')
    click_link('Add new store')
    expect(page).to have_content('Add new store:')
  end
end

describe('add a new store', {:type => :feature}) do
  it('allows the user to add a store') do
    visit('/')
    click_link('Add new store')
    fill_in('name', :with => 'Shoe Mill')
    click_button('Add store')
    expect(page).to have_content('Shoe Mill')
  end
end

describe('the store errors route', {:type => :feature}) do
  it('takes the user to the errors page') do
    visit('/')
    click_link('Add new store')
    fill_in('name', :with => '')
    click_button('Add store')
    expect(page).to have_content('Oops there were some errors:')
  end
end

describe('view single store instance route', {:type => :feature}) do
  it('allows the user to view a single store') do
    visit('/')
    click_link('Add new store')
    fill_in('name', :with => 'Shoes Rock')
    click_button('Add store')
    expect(page).to have_content('Shoes Rock')
    click_link("Shoes Rock")
    expect(page).to have_content('Individual store page')
  end
end

describe('update a store name route', {:type => :feature}) do
  it('allows the user to update the store name') do
    visit('/')
    click_link('Add new store')
    fill_in("name", :with => 'The Green Shoe')
    click_button('Add store')
    expect(page).to have_content('The Green Shoe')
    click_link('The Green Shoe')
    click_link("Update")
    fill_in('name', :with => 'The Red Barn')
    click_button('Update')
    expect(page).to have_content('The Red Barn')
  end
end

describe('delete a store', {:type => :feature}) do
  it('allows the user to delete a store') do
    visit('/')
    click_link('Add new store')
    fill_in("name", :with => 'Joes Shoes')
    click_button('Add store')
    expect(page).to have_content('Joes Shoes')
    click_link("Joes Shoes")
    click_link("Update")
    click_button('Delete')
    expect(page).to have_content('Current Stores in Database')
  end
end

describe('the add new brand page route', {:type => :feature}) do
  it('takes the user to the brand form page') do
    visit('/')
    click_link('Add new brand')
    expect(page).to have_content('Add new brand:')
  end
end

describe('add a new brand route', {:type => :feature}) do
  it('takes the user to the brand form page') do
    visit('/')
    click_link('Add new brand')
    expect(page).to have_content('Add new brand:')
  end
end


# describe('view single brand path', {:type => :feature}) do
#   it('allows a user to view a single brand') do
