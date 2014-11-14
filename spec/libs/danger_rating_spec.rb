require 'rails_helper'
require 'danger_rating'

RSpec.describe DangerRating do
  
  it "returns danger array" do
    array = DangerRating.getArray();
    expect(array).to_not be_nil
  end

end