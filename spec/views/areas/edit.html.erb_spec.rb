require 'rails_helper'

RSpec.describe "areas/edit", :type => :view do
  before(:each) do
    @area = assign(:area, Area.create!(
      :name => "MyString",
      :longitude => "9.99",
      :latitude => "9.99",
      :zoom => 1,
      :weather => "MyString",
      :description => "MyText",
      :history => "MyText"
    ))
  end

  it "renders the edit area form" do
    render

    assert_select "form[action=?][method=?]", area_path(@area), "post" do

      assert_select "input#area_name[name=?]", "area[name]"

      assert_select "input#area_longitude[name=?]", "area[longitude]"

      assert_select "input#area_latitude[name=?]", "area[latitude]"

      assert_select "input#area_zoom[name=?]", "area[zoom]"

      assert_select "input#area_weather[name=?]", "area[weather]"

      assert_select "textarea#area_description[name=?]", "area[description]"

      assert_select "textarea#area_history[name=?]", "area[history]"
    end
  end
end
