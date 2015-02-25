require 'rails_helper'

RSpec.describe "searches/edit", :type => :view do
  before(:each) do
    @search = assign(:search, Search.create!(
      :keywords => "MyString",
      :new => "MyString",
      :show => "MyString"
    ))
  end

  it "renders the edit search form" do
    render

    assert_select "form[action=?][method=?]", search_path(@search), "post" do

      assert_select "input#search_keywords[name=?]", "search[keywords]"

      assert_select "input#search_new[name=?]", "search[new]"

      assert_select "input#search_show[name=?]", "search[show]"
    end
  end
end
