require 'rails_helper'

RSpec.describe "sport_routes/new", :type => :view do
  before(:each) do
    assign(:sport_route, SportRoute.new(
      :name => "MyString",
      :latitude => "MyString",
      :longitude => "MyString",
      :zoom => 1,
      :description => "MyText",
      :directions => "MyText",
      :wall => nil,
      :danger_rating => "MyString",
      :bolts => 1,
      :stars => 1,
      :pitches => 1,
      : => "MyString",
      :anchor => "MyString"
    ))
  end

  it "renders new sport_route form" do
    render

    assert_select "form[action=?][method=?]", sport_routes_path, "post" do

      assert_select "input#sport_route_name[name=?]", "sport_route[name]"

      assert_select "input#sport_route_latitude[name=?]", "sport_route[latitude]"

      assert_select "input#sport_route_longitude[name=?]", "sport_route[longitude]"

      assert_select "input#sport_route_zoom[name=?]", "sport_route[zoom]"

      assert_select "textarea#sport_route_description[name=?]", "sport_route[description]"

      assert_select "textarea#sport_route_directions[name=?]", "sport_route[directions]"

      assert_select "input#sport_route_wall_id[name=?]", "sport_route[wall_id]"

      assert_select "input#sport_route_danger_rating[name=?]", "sport_route[danger_rating]"

      assert_select "input#sport_route_bolts[name=?]", "sport_route[bolts]"

      assert_select "input#sport_route_stars[name=?]", "sport_route[stars]"

      assert_select "input#sport_route_pitches[name=?]", "sport_route[pitches]"

      assert_select "input#sport_route_[name=?]", "sport_route[]"

      assert_select "input#sport_route_anchor[name=?]", "sport_route[anchor]"
    end
  end
end
