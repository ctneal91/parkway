require "test_helper"

class UserCanSignUpTest < Capybara::Rails::TestCase
  test "User can sign up from root path" do
    visit root_path
    click_link "Create Account"

    #on sign up page
    assert_content page, 'Welcome to TMC Parkway'

    fill_in "First Name", with: 'Nancy'
    fill_in "Last Name", with: 'Pevato'
    fill_in 'Email', with: 'nancy.pevato@gotchabrian.com'
    fill_in 'Password', with: 'Tfortaco'
    fill_in 'Password Confirmation', with: 'Tfortaco'

    click_button 'Sign Up'

    #on root page
    assert_content page, 'Sign Out'

    #root page displays @current_user name
    assert_content page, 'Nancy'

    #root page does not allow double sign in when @current_user is present
    refute_content page, 'Sign In'
  end
end
