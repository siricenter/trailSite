require 'rails_helper'

RSpec.describe "boulder_routes/show", :type => :view do
  before(:each) do
    @boulder_route = assign(:boulder_route, BoulderRoute.create!(
      :name => "Name",
      :latitude => "9.99",
      :longitude => "9.99",
      :zoom => 1,
      :description => "MyText",
      :directions => "MyText",
      :wall => nil,
      :danger_rating => "Danger Rating",
      :stars => 2,
      :pads => 3,
      :hueco_grade => "Hueco Grade",
      :length => "9.99"
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
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Hueco Grade/)
    expect(rendered).to match(/9.99/)
  end
end
