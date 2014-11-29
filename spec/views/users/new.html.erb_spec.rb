require 'rails_helper'

RSpec.describe "users/new", :type => :view do
  before(:each) do
    assign(:user, User.new(
      :username => "MyString",
      :password => "MyString",
      :salt => "MyString",
      :first_name => "MyString",
      :last_name => "MyString",
      :email => "MyString",
      :user_type => "MyString"
    ))
  end

  it "renders new user form" do
    render

    assert_select "form[action=?][method=?]", users_path, "post" do

      assert_select "input#user_username[name=?]", "user[username]"

      assert_select "input#user_password[name=?]", "user[password]"

      assert_select "input#user_salt[name=?]", "user[salt]"

      assert_select "input#user_first_name[name=?]", "user[first_name]"

      assert_select "input#user_last_name[name=?]", "user[last_name]"

      assert_select "input#user_email[name=?]", "user[email]"

      assert_select "input#user_user_type[name=?]", "user[user_type]"
    end
  end
end
