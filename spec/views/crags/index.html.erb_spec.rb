require 'rails_helper'

RSpec.describe "crags/index", :type => :view do
  before(:each) do
    assign(:crags, [
      Crag.create!(
        :territory => nil,
        :name => "Name",
        :longitude => "9.99",
        :latitude => "9.99",
        :zoom => 1,
        :directions => "MyText",
        :description => "MyText",
        :history => "MyText"
      ),
      Crag.create!(
        :territory => nil,
        :name => "Name",
        :longitude => "9.99",
        :latitude => "9.99",
        :zoom => 1,
        :directions => "MyText",
        :description => "MyText",
        :history => "MyText"
      )
    ])
  end

  it "renders a list of crags" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
