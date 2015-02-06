require 'rails_helper'

RSpec.describe "sport_routes/show", :type => :view do
  before(:each) do
    @sport_route = assign(:sport_route, SportRoute.create!(
      :name => "Name",
      :latitude => "Latitude",
      :longitude => "Longitude",
      :zoom => 1,
      :description => "MyText",
      :directions => "MyText",
      :wall => nil,
      :danger_rating => "Danger Rating",
      :bolts => 2,
      :stars => 3,
      :pitches => 4,
      : => "Yds Grade",
      :anchor => "Anchor"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Latitude/)
    expect(rendered).to match(/Longitude/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Danger Rating/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/Yds Grade/)
    expect(rendered).to match(/Anchor/)
  end
end
