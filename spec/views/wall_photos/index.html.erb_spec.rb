require 'rails_helper'

RSpec.describe "wall_photos/index", :type => :view do
  before(:each) do
    assign(:wall_photos, [
      WallPhoto.create!(
        :title => "Title",
        :wall => nil,
        :url => "Url"
      ),
      WallPhoto.create!(
        :title => "Title",
        :wall => nil,
        :url => "Url"
      )
    ])
  end

  it "renders a list of wall_photos" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
  end
end
