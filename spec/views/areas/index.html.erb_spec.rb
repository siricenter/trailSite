require 'rails_helper'

RSpec.describe "areas/index", :type => :view do
  before(:each) do
    assign(:areas, [
      Area.create!(
        :name => "Name",
        :longitude => "9.99",
        :latitude => "9.99",
        :zoom => 1,
        :weather => "Weather",
        :description => "MyText",
        :history => "MyText"
      ),
      Area.create!(
        :name => "Name",
        :longitude => "9.99",
        :latitude => "9.99",
        :zoom => 1,
        :weather => "Weather",
        :description => "MyText",
        :history => "MyText"
      )
    ])
  end

  it "renders a list of areas" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Weather".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
