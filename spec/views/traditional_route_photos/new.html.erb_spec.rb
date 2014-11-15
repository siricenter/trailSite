require 'rails_helper'

RSpec.describe "traditional_route_photos/new", :type => :view do
  before(:each) do
    assign(:traditional_route_photo, TraditionalRoutePhoto.new(
      :title => "MyString",
      :traditional_route => nil,
      :url => "MyString"
    ))
  end

  it "renders new traditional_route_photo form" do
    render

    assert_select "form[action=?][method=?]", traditional_route_photos_path, "post" do

      assert_select "input#traditional_route_photo_title[name=?]", "traditional_route_photo[title]"

      assert_select "input#traditional_route_photo_traditional_route_id[name=?]", "traditional_route_photo[traditional_route_id]"

      assert_select "input#traditional_route_photo_url[name=?]", "traditional_route_photo[url]"
    end
  end
end
