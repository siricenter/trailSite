require 'rails_helper'

RSpec.describe "boulder_routes/edit", :type => :view do
  before(:each) do
    @boulder_route = assign(:boulder_route, BoulderRoute.create!(
      :name => "MyString",
      :latitude => "9.99",
      :longitude => "9.99",
      :zoom => 1,
      :description => "MyText",
      :directions => "MyText",
      :wall => nil,
      :danger_rating => "MyString",
      :stars => 1,
      :pads => 1,
      :hueco_grade => "MyString",
      :length => "9.99"
    ))
  end

  it "renders the edit boulder_route form" do
    render

    assert_select "form[action=?][method=?]", boulder_route_path(@boulder_route), "post" do

      assert_select "input#boulder_route_name[name=?]", "boulder_route[name]"

      assert_select "input#boulder_route_latitude[name=?]", "boulder_route[latitude]"

      assert_select "input#boulder_route_longitude[name=?]", "boulder_route[longitude]"

      assert_select "input#boulder_route_zoom[name=?]", "boulder_route[zoom]"

      assert_select "textarea#boulder_route_description[name=?]", "boulder_route[description]"

      assert_select "textarea#boulder_route_directions[name=?]", "boulder_route[directions]"

      assert_select "input#boulder_route_wall_id[name=?]", "boulder_route[wall_id]"

      assert_select "input#boulder_route_danger_rating[name=?]", "boulder_route[danger_rating]"

      assert_select "input#boulder_route_stars[name=?]", "boulder_route[stars]"

      assert_select "input#boulder_route_pads[name=?]", "boulder_route[pads]"

      assert_select "input#boulder_route_hueco_grade[name=?]", "boulder_route[hueco_grade]"

      assert_select "input#boulder_route_length[name=?]", "boulder_route[length]"
    end
  end
end
