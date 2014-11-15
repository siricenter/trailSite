require 'rails_helper'

RSpec.describe "wall_photos/show", :type => :view do
  before(:each) do
    @wall_photo = assign(:wall_photo, WallPhoto.create!(
      :title => "Title",
      :wall => nil,
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
