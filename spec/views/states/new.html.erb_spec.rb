require 'rails_helper'

RSpec.describe "states/new", :type => :view do
  before(:each) do
    assign(:state, State.new(
      :region => nil,
      :name => "MyString",
      :latitude => "9.99",
      :longitude => "9.99",
      :zoom => 1,
      :history => "MyText"
    ))
  end

  it "renders new state form" do
    render

    assert_select "form[action=?][method=?]", states_path, "post" do

      assert_select "input#state_region_id[name=?]", "state[region_id]"

      assert_select "input#state_name[name=?]", "state[name]"

      assert_select "input#state_latitude[name=?]", "state[latitude]"

      assert_select "input#state_longitude[name=?]", "state[longitude]"

      assert_select "input#state_zoom[name=?]", "state[zoom]"

      assert_select "textarea#state_history[name=?]", "state[history]"
    end
  end
end
