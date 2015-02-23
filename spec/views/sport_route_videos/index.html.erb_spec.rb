require 'rails_helper'

RSpec.describe "sport_route_videos/index", :type => :view do
  before(:each) do
    assign(:sport_route_videos, [
      SportRouteVideo.create!(
        :title => "Title",
        :sport_route_id => "",
        :url => "Url",
        :description => "Description",
        :user_id => ""
      ),
      SportRouteVideo.create!(
        :title => "Title",
        :sport_route_id => "",
        :url => "Url",
        :description => "Description",
        :user_id => ""
      )
    ])
  end

  it "renders a list of sport_route_videos" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
