require 'rails_helper'

RSpec.describe "boulder_routes/index", :type => :view do
  before(:each) do
    assign(:boulder_routes, [
      BoulderRoute.create!(
        :name => "Name",
        :latitude => "9.99",
        :longitude => "9.99",
        :zoom => 1,
        :description => "MyText",
        :directions => "MyText",
        :wall => nil,
        :danger_rating => "Danger Rating",
        :stars => 2,
        :pads => 3,
        :hueco_grade => "Hueco Grade",
        :length => "9.99"
      ),
      BoulderRoute.create!(
        :name => "Name",
        :latitude => "9.99",
        :longitude => "9.99",
        :zoom => 1,
        :description => "MyText",
        :directions => "MyText",
        :wall => nil,
        :danger_rating => "Danger Rating",
        :stars => 2,
        :pads => 3,
        :hueco_grade => "Hueco Grade",
        :length => "9.99"
      )
    ])
  end

  it "renders a list of boulder_routes" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Danger Rating".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Hueco Grade".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
