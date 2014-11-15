require 'rails_helper'

RSpec.describe "sport_route_photos/edit", :type => :view do
  before(:each) do
    @sport_route_photo = assign(:sport_route_photo, SportRoutePhoto.create!(
      :title => "MyString",
      :sport_route => nil,
      :url => "MyString"
    ))
  end

  it "renders the edit sport_route_photo form" do
    render

    assert_select "form[action=?][method=?]", sport_route_photo_path(@sport_route_photo), "post" do

      assert_select "input#sport_route_photo_title[name=?]", "sport_route_photo[title]"

      assert_select "input#sport_route_photo_sport_route_id[name=?]", "sport_route_photo[sport_route_id]"

      assert_select "input#sport_route_photo_url[name=?]", "sport_route_photo[url]"
    end
  end
end
