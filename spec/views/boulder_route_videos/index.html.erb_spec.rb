require 'rails_helper'

RSpec.describe "boulder_route_videos/index", :type => :view do
  before(:each) do
    assign(:boulder_route_videos, [
      BoulderRouteVideo.create!(
        :title => "Title",
        :boulder_route => nil,
        :url => "Url",
        :description => "Description",
        :user => nil
      ),
      BoulderRouteVideo.create!(
        :title => "Title",
        :boulder_route => nil,
        :url => "Url",
        :description => "Description",
        :user => nil
      )
    ])
  end

  it "renders a list of boulder_route_videos" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
