require 'rails_helper'

RSpec.describe "wall_photos/new", :type => :view do
  before(:each) do
    assign(:wall_photo, WallPhoto.new(
      :title => "MyString",
      :wall => nil,
      :url => "MyString"
    ))
  end

  it "renders new wall_photo form" do
    render

    assert_select "form[action=?][method=?]", wall_photos_path, "post" do

      assert_select "input#wall_photo_title[name=?]", "wall_photo[title]"

      assert_select "input#wall_photo_wall_id[name=?]", "wall_photo[wall_id]"

      assert_select "input#wall_photo_url[name=?]", "wall_photo[url]"
    end
  end
end
