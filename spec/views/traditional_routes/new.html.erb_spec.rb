require 'rails_helper'

RSpec.describe "traditional_routes/new", :type => :view do
  before(:each) do
    assign(:traditional_route, TraditionalRoute.new(
      :name => "MyString",
      :latitude => "9.99",
      :longitude => "9.99",
      :zoom => 1,
      :description => "MyText",
      :directions => "MyText",
      :wall => nil,
      :danger_rating => "MyString",
      :gear_needed => "MyText",
      :stars => 1,
      :pitches => 1,
      : => "MyString",
      :length => "9.99",
      :anchor => "MyText"
    ))
  end

  it "renders new traditional_route form" do
    render

    assert_select "form[action=?][method=?]", traditional_routes_path, "post" do

      assert_select "input#traditional_route_name[name=?]", "traditional_route[name]"

      assert_select "input#traditional_route_latitude[name=?]", "traditional_route[latitude]"

      assert_select "input#traditional_route_longitude[name=?]", "traditional_route[longitude]"

      assert_select "input#traditional_route_zoom[name=?]", "traditional_route[zoom]"

      assert_select "textarea#traditional_route_description[name=?]", "traditional_route[description]"

      assert_select "textarea#traditional_route_directions[name=?]", "traditional_route[directions]"

      assert_select "input#traditional_route_wall_id[name=?]", "traditional_route[wall_id]"

      assert_select "input#traditional_route_danger_rating[name=?]", "traditional_route[danger_rating]"

      assert_select "textarea#traditional_route_gear_needed[name=?]", "traditional_route[gear_needed]"

      assert_select "input#traditional_route_stars[name=?]", "traditional_route[stars]"

      assert_select "input#traditional_route_pitches[name=?]", "traditional_route[pitches]"

      assert_select "input#traditional_route_[name=?]", "traditional_route[]"

      assert_select "input#traditional_route_length[name=?]", "traditional_route[length]"

      assert_select "textarea#traditional_route_anchor[name=?]", "traditional_route[anchor]"
    end
  end
end
