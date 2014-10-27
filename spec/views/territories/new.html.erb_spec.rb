require 'rails_helper'

RSpec.describe "territories/new", :type => :view do
  before(:each) do
    assign(:territory, Territory.new(
      :area => nil,
      :name => "MyString",
      :longitude => "9.99",
      :latitude => "9.99",
      :zoom => 1,
      :directions => "MyText",
      :description => "MyText",
      :history => "MyText"
    ))
  end

  it "renders new territory form" do
    render

    assert_select "form[action=?][method=?]", territories_path, "post" do

      assert_select "input#territory_area_id[name=?]", "territory[area_id]"

      assert_select "input#territory_name[name=?]", "territory[name]"

      assert_select "input#territory_longitude[name=?]", "territory[longitude]"

      assert_select "input#territory_latitude[name=?]", "territory[latitude]"

      assert_select "input#territory_zoom[name=?]", "territory[zoom]"

      assert_select "textarea#territory_directions[name=?]", "territory[directions]"

      assert_select "textarea#territory_description[name=?]", "territory[description]"

      assert_select "textarea#territory_history[name=?]", "territory[history]"
    end
  end
end
