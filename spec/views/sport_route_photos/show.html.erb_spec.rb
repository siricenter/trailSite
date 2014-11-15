require 'rails_helper'

RSpec.describe "sport_route_photos/show", :type => :view do
  before(:each) do
    @sport_route_photo = assign(:sport_route_photo, SportRoutePhoto.create!(
      :title => "Title",
      :sport_route => nil,
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
