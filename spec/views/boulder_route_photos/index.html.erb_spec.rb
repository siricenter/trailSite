require 'rails_helper'

RSpec.describe "boulder_route_photos/index", :type => :view do
  before(:each) do
    assign(:boulder_route_photos, [
      BoulderRoutePhoto.create!(
        :title => "Title",
        :boulder_route => nil,
        :url => "Url"
      ),
      BoulderRoutePhoto.create!(
        :title => "Title",
        :boulder_route => nil,
        :url => "Url"
      )
    ])
  end

  it "renders a list of boulder_route_photos" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
  end
end
