require 'spec_helper'

describe "schools/show.html.erb" do
  before(:each) do
    @school = assign(:school, stub_model(School))
  end

  it "renders attributes in <p>" do
    render
  end
end
