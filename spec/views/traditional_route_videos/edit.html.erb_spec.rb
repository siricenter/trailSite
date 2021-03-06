require 'rails_helper'

RSpec.describe "traditional_route_videos/edit", :type => :view do
  before(:each) do
    @traditional_route_video = assign(:traditional_route_video, TraditionalRouteVideo.create!(
      :title => "MyString",
      :traditional_route => nil,
      :url => "MyString",
      :description => "MyString",
      :user => nil
    ))
  end

  it "renders the edit traditional_route_video form" do
    render

    assert_select "form[action=?][method=?]", traditional_route_video_path(@traditional_route_video), "post" do

      assert_select "input#traditional_route_video_title[name=?]", "traditional_route_video[title]"

      assert_select "input#traditional_route_video_traditional_route_id[name=?]", "traditional_route_video[traditional_route_id]"

      assert_select "input#traditional_route_video_url[name=?]", "traditional_route_video[url]"

      assert_select "input#traditional_route_video_description[name=?]", "traditional_route_video[description]"

      assert_select "input#traditional_route_video_user_id[name=?]", "traditional_route_video[user_id]"
    end
  end
end
