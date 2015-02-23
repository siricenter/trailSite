require 'rails_helper'

RSpec.describe "boulder_route_videos/show", :type => :view do
  before(:each) do
    @boulder_route_video = assign(:boulder_route_video, BoulderRouteVideo.create!(
      :title => "Title",
      :boulder_route => nil,
      :url => "Url",
      :description => "Description",
      :user => nil
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
