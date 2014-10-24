require 'rails_helper'

RSpec.describe "states/index", :type => :view do
  before(:each) do
    assign(:states, [
      State.create!(
        :region => nil,
        :name => "Name",
        :latitude => "9.99",
        :longitude => "9.99",
        :zoom => 1,
        :history => "MyText"
      ),
      State.create!(
        :region => nil,
        :name => "Name",
        :latitude => "9.99",
        :longitude => "9.99",
        :zoom => 1,
        :history => "MyText"
      )
    ])
  end

  it "renders a list of states" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
