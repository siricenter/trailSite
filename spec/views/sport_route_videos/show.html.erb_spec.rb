require 'rails_helper'

RSpec.describe "sport_route_videos/show", :type => :view do
  before(:each) do
    @sport_route_video = assign(:sport_route_video, SportRouteVideo.create!(
      :title => "Title",
      :sport_route_id => "",
      :url => "Url",
      :description => "Description",
      :user_id => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Url/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(//)
  end
end
