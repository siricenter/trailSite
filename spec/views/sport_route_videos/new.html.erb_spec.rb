require 'rails_helper'

RSpec.describe "sport_route_videos/new", :type => :view do
  before(:each) do
    assign(:sport_route_video, SportRouteVideo.new(
      :title => "MyString",
      :sport_route_id => "",
      :url => "MyString",
      :description => "MyString",
      :user_id => ""
    ))
  end

  it "renders new sport_route_video form" do
    render

    assert_select "form[action=?][method=?]", sport_route_videos_path, "post" do

      assert_select "input#sport_route_video_title[name=?]", "sport_route_video[title]"

      assert_select "input#sport_route_video_sport_route_id[name=?]", "sport_route_video[sport_route_id]"

      assert_select "input#sport_route_video_url[name=?]", "sport_route_video[url]"

      assert_select "input#sport_route_video_description[name=?]", "sport_route_video[description]"

      assert_select "input#sport_route_video_user_id[name=?]", "sport_route_video[user_id]"
    end
  end
end
