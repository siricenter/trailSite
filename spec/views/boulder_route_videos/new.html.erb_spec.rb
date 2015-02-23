require 'rails_helper'

RSpec.describe "boulder_route_videos/new", :type => :view do
  before(:each) do
    assign(:boulder_route_video, BoulderRouteVideo.new(
      :title => "MyString",
      :boulder_route => nil,
      :url => "MyString",
      :description => "MyString",
      :user => nil
    ))
  end

  it "renders new boulder_route_video form" do
    render

    assert_select "form[action=?][method=?]", boulder_route_videos_path, "post" do

      assert_select "input#boulder_route_video_title[name=?]", "boulder_route_video[title]"

      assert_select "input#boulder_route_video_boulder_route_id[name=?]", "boulder_route_video[boulder_route_id]"

      assert_select "input#boulder_route_video_url[name=?]", "boulder_route_video[url]"

      assert_select "input#boulder_route_video_description[name=?]", "boulder_route_video[description]"

      assert_select "input#boulder_route_video_user_id[name=?]", "boulder_route_video[user_id]"
    end
  end
end
