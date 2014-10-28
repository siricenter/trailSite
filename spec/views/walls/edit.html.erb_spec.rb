require 'rails_helper'

RSpec.describe "walls/edit", :type => :view do
  before(:each) do
    @wall = assign(:wall, Wall.create!(
      :crag => nil,
      :name => "MyString",
      :longitude => "9.99",
      :latitude => "9.99",
      :zoom => 1,
      :directions => "MyText",
      :description => "MyText",
      :history => "MyText"
    ))
  end

  it "renders the edit wall form" do
    render

    assert_select "form[action=?][method=?]", wall_path(@wall), "post" do

      assert_select "input#wall_crag_id[name=?]", "wall[crag_id]"

      assert_select "input#wall_name[name=?]", "wall[name]"

      assert_select "input#wall_longitude[name=?]", "wall[longitude]"

      assert_select "input#wall_latitude[name=?]", "wall[latitude]"

      assert_select "input#wall_zoom[name=?]", "wall[zoom]"

      assert_select "textarea#wall_directions[name=?]", "wall[directions]"

      assert_select "textarea#wall_description[name=?]", "wall[description]"

      assert_select "textarea#wall_history[name=?]", "wall[history]"
    end
  end
end
