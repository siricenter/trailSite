require 'rails_helper'

RSpec.describe "boulder_route_photos/show", :type => :view do
  before(:each) do
    @boulder_route_photo = assign(:boulder_route_photo, BoulderRoutePhoto.create!(
      :title => "Title",
      :boulder_route => nil,
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
