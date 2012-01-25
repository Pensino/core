require 'spec_helper'

describe "schools/new.html.erb" do
  before(:each) do
    assign(:school, stub_model(School).as_new_record)
  end

  it "renders new school form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => schools_path, :method => "post" do
    end
  end
end
