require 'rails_helper'

RSpec.describe "traditional_routes/index", :type => :view do
  before(:each) do
    assign(:traditional_routes, [
      TraditionalRoute.create!(
        :name => "Name",
        :latitude => "9.99",
        :longitude => "9.99",
        :zoom => 1,
        :description => "MyText",
        :directions => "MyText",
        :wall => nil,
        :danger_rating => "Danger Rating",
        :gear_needed => "MyText",
        :stars => 2,
        :pitches => 3,
        : => "Yds Grade",
        :length => "9.99",
        :anchor => "MyText"
      ),
      TraditionalRoute.create!(
        :name => "Name",
        :latitude => "9.99",
        :longitude => "9.99",
        :zoom => 1,
        :description => "MyText",
        :directions => "MyText",
        :wall => nil,
        :danger_rating => "Danger Rating",
        :gear_needed => "MyText",
        :stars => 2,
        :pitches => 3,
        : => "Yds Grade",
        :length => "9.99",
        :anchor => "MyText"
      )
    ])
  end

  it "renders a list of traditional_routes" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Danger Rating".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Yds Grade".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
