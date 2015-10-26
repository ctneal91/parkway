require "test_helper"

class AuthenticationTest < Capybara::Rails::TestCase
  test "user can sign_in" do
    nancy = User.create! first_name: "Nancy",
                         last_name: "Pevato",
                         email: "nancy.pevato@gotchabrian.com",
                         password: "Tfortaco"
    visit sign_in_path
    assert_content page, "Please sign in"

    fill_in "Email", with: "nancy.pevato@gotchabrian.com"
    fill_in "Password", with: "Tfortaco"
    click_button 'Sign In'

    assert_content page, 'Nancy'
  end
end
