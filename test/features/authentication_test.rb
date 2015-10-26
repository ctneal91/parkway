require "test_helper"

class AuthenticationTests < Capybara::Rails::TestCase
  test "user can sign in and sign out" do
    nancy = User.create! first_name: "Nancy",
                         last_name: "Pevato",
                         email: "nancy.pevato@gotchabrian.com",
                         password: "Tfortaco"
    # sign in part
    visit sign_in_path
    assert_content page, "Please sign in"

    fill_in "Email", with: "nancy.pevato@gotchabrian.com"
    fill_in "Password", with: "Tfortaco"
    click_button 'Sign In'

    assert_content page, 'Nancy'

    # sign out part
    click_link 'Sign Out'

    refute_content page, 'Nancy'
  end
end
