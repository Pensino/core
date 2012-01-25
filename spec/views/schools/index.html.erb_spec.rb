require 'spec_helper'

describe "schools/index.html.erb" do
  before(:each) do
    assign(:schools, [
      stub_model(School),
      stub_model(School)
    ])
  end

  it "renders a list of schools" do
    render
  end
end
