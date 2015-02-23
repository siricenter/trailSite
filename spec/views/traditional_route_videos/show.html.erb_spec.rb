require 'rails_helper'

RSpec.describe "traditional_route_videos/show", :type => :view do
  before(:each) do
    @traditional_route_video = assign(:traditional_route_video, TraditionalRouteVideo.create!(
      :title => "Title",
      :traditional_route => nil,
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
