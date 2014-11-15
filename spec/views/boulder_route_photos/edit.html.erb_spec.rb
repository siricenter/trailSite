require 'rails_helper'

RSpec.describe "boulder_route_photos/edit", :type => :view do
  before(:each) do
    @boulder_route_photo = assign(:boulder_route_photo, BoulderRoutePhoto.create!(
      :title => "MyString",
      :boulder_route => nil,
      :url => "MyString"
    ))
  end

  it "renders the edit boulder_route_photo form" do
    render

    assert_select "form[action=?][method=?]", boulder_route_photo_path(@boulder_route_photo), "post" do

      assert_select "input#boulder_route_photo_title[name=?]", "boulder_route_photo[title]"

      assert_select "input#boulder_route_photo_boulder_route_id[name=?]", "boulder_route_photo[boulder_route_id]"

      assert_select "input#boulder_route_photo_url[name=?]", "boulder_route_photo[url]"
    end
  end
end
