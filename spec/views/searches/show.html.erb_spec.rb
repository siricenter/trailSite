require 'rails_helper'

RSpec.describe "searches/show", :type => :view do
  before(:each) do
    @search = assign(:search, Search.create!(
      :keywords => "Keywords",
      :new => "New",
      :show => "Show"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Keywords/)
    expect(rendered).to match(/New/)
    expect(rendered).to match(/Show/)
  end
end
