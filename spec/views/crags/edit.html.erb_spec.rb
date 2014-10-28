require 'rails_helper'

RSpec.describe "crags/edit", :type => :view do
  before(:each) do
    @crag = assign(:crag, Crag.create!(
      :territory => nil,
      :name => "MyString",
      :longitude => "9.99",
      :latitude => "9.99",
      :zoom => 1,
      :directions => "MyText",
      :description => "MyText",
      :history => "MyText"
    ))
  end

  it "renders the edit crag form" do
    render

    assert_select "form[action=?][method=?]", crag_path(@crag), "post" do

      assert_select "input#crag_territory_id[name=?]", "crag[territory_id]"

      assert_select "input#crag_name[name=?]", "crag[name]"

      assert_select "input#crag_longitude[name=?]", "crag[longitude]"

      assert_select "input#crag_latitude[name=?]", "crag[latitude]"

      assert_select "input#crag_zoom[name=?]", "crag[zoom]"

      assert_select "textarea#crag_directions[name=?]", "crag[directions]"

      assert_select "textarea#crag_description[name=?]", "crag[description]"

      assert_select "textarea#crag_history[name=?]", "crag[history]"
    end
  end
end
