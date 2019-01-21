require 'spec_helper'

describe "Hello World endpoint" do
  it "should say Hello World!" do
    get '/'
    expect(last_response.body).to eq('{"message":"Hello World"}')
  end
end
