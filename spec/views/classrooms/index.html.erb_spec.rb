require 'spec_helper'

describe "classrooms/index.html.erb" do
  before(:each) do
    assign(:classrooms, [
      stub_model(Classroom,
        :name => "Name"
      ),
      stub_model(Classroom,
        :name => "Name"
      )
    ])
  end

  it "renders a list of classrooms" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
