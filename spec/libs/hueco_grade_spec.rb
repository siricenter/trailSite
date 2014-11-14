require 'rails_helper'
require 'hueco_grade'

RSpec.describe HuecoGrade do

  
  it "returns hueco array" do
    array = HuecoGrade.getArray();
    expect(array).to_not be_nil
  end

end