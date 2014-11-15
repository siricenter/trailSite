require 'rails_helper'

RSpec.describe "traditional_route_photos/index", :type => :view do
  before(:each) do
    assign(:traditional_route_photos, [
      TraditionalRoutePhoto.create!(
        :title => "Title",
        :traditional_route => nil,
        :url => "Url"
      ),
      TraditionalRoutePhoto.create!(
        :title => "Title",
        :traditional_route => nil,
        :url => "Url"
      )
    ])
  end

  it "renders a list of traditional_route_photos" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
  end
end
