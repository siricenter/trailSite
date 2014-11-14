require 'rails_helper'
require 'anchor_type'

RSpec.describe AnchorType do
  
  it "returns danger array" do
    array = AnchorType.getArray();
    expect(array).to_not be_nil
  end

end