require 'rails_helper'

RSpec.describe "searches/index", :type => :view do
  before(:each) do
    assign(:searches, [
      Search.create!(
        :keywords => "Keywords",
        :new => "New",
        :show => "Show"
      ),
      Search.create!(
        :keywords => "Keywords",
        :new => "New",
        :show => "Show"
      )
    ])
  end

  it "renders a list of searches" do
    render
    assert_select "tr>td", :text => "Keywords".to_s, :count => 2
    assert_select "tr>td", :text => "New".to_s, :count => 2
    assert_select "tr>td", :text => "Show".to_s, :count => 2
  end
end
