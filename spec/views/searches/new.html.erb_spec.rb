require 'rails_helper'

RSpec.describe "searches/new", :type => :view do
  before(:each) do
    assign(:search, Search.new(
      :keywords => "MyString",
      :new => "MyString",
      :show => "MyString"
    ))
  end

  it "renders new search form" do
    render

    assert_select "form[action=?][method=?]", searches_path, "post" do

      assert_select "input#search_keywords[name=?]", "search[keywords]"

      assert_select "input#search_new[name=?]", "search[new]"

      assert_select "input#search_show[name=?]", "search[show]"
    end
  end
end
