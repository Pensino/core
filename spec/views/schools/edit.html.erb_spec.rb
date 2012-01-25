require 'spec_helper'

describe "schools/edit.html.erb" do
  before(:each) do
    @school = assign(:school, stub_model(School))
  end

  it "renders the edit school form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => schools_path(@school), :method => "post" do
    end
  end
end
