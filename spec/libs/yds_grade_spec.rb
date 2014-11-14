require 'rails_helper'
require 'yds_grade'

RSpec.describe YdsGrade do

  
  it "returns yds array" do
    array = YdsGrade.getArray();
    expect(array).to_not be_nil
  end

end