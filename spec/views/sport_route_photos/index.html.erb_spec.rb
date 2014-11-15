require 'rails_helper'

RSpec.describe "sport_route_photos/index", :type => :view do
  before(:each) do
    assign(:sport_route_photos, [
      SportRoutePhoto.create!(
        :title => "Title",
        :sport_route => nil,
        :url => "Url"
      ),
      SportRoutePhoto.create!(
        :title => "Title",
        :sport_route => nil,
        :url => "Url"
      )
    ])
  end

  it "renders a list of sport_route_photos" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
  end
end
