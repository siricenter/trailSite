require 'rails_helper'

RSpec.describe "areas/show", :type => :view do
  before(:each) do
    @area = assign(:area, Area.create!(
      :name => "Name",
      :longitude => "9.99",
      :latitude => "9.99",
      :zoom => 1,
      :weather => "Weather",
      :description => "MyText",
      :history => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Weather/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
  end
end
