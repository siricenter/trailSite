require 'rails_helper'

RSpec.describe "traditional_routes/show", :type => :view do
  before(:each) do
    @traditional_route = assign(:traditional_route, TraditionalRoute.create!(
      :name => "Name",
      :latitude => "9.99",
      :longitude => "9.99",
      :zoom => 1,
      :description => "MyText",
      :directions => "MyText",
      :wall => nil,
      :danger_rating => "Danger Rating",
      :gear_needed => "MyText",
      :stars => 2,
      :pitches => 3,
      : => "Yds Grade",
      :length => "9.99",
      :anchor => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Danger Rating/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Yds Grade/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/MyText/)
  end
end
