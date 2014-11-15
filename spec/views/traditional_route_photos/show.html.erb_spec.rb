require 'rails_helper'

RSpec.describe "traditional_route_photos/show", :type => :view do
  before(:each) do
    @traditional_route_photo = assign(:traditional_route_photo, TraditionalRoutePhoto.create!(
      :title => "Title",
      :traditional_route => nil,
      :url => "Url"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Url/)
  end
end
