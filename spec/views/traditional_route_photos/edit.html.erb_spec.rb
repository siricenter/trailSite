require 'rails_helper'

RSpec.describe "traditional_route_photos/edit", :type => :view do
  before(:each) do
    @traditional_route_photo = assign(:traditional_route_photo, TraditionalRoutePhoto.create!(
      :title => "MyString",
      :traditional_route => nil,
      :url => "MyString"
    ))
  end

  it "renders the edit traditional_route_photo form" do
    render

    assert_select "form[action=?][method=?]", traditional_route_photo_path(@traditional_route_photo), "post" do

      assert_select "input#traditional_route_photo_title[name=?]", "traditional_route_photo[title]"

      assert_select "input#traditional_route_photo_traditional_route_id[name=?]", "traditional_route_photo[traditional_route_id]"

      assert_select "input#traditional_route_photo_url[name=?]", "traditional_route_photo[url]"
    end
  end
end
