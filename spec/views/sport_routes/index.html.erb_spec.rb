require 'rails_helper'

RSpec.describe "sport_routes/index", :type => :view do
  before(:each) do
    assign(:sport_routes, [
      SportRoute.create!(
        :name => "Name",
        :latitude => "Latitude",
        :longitude => "Longitude",
        :zoom => 1,
        :description => "MyText",
        :directions => "MyText",
        :wall => nil,
        :danger_rating => "Danger Rating",
        :bolts => 2,
        :stars => 3,
        :pitches => 4,
        : => "Yds Grade",
        :anchor => "Anchor"
      ),
      SportRoute.create!(
        :name => "Name",
        :latitude => "Latitude",
        :longitude => "Longitude",
        :zoom => 1,
        :description => "MyText",
        :directions => "MyText",
        :wall => nil,
        :danger_rating => "Danger Rating",
        :bolts => 2,
        :stars => 3,
        :pitches => 4,
        : => "Yds Grade",
        :anchor => "Anchor"
      )
    ])
  end

  it "renders a list of sport_routes" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Latitude".to_s, :count => 2
    assert_select "tr>td", :text => "Longitude".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Danger Rating".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => "Yds Grade".to_s, :count => 2
    assert_select "tr>td", :text => "Anchor".to_s, :count => 2
  end
end
