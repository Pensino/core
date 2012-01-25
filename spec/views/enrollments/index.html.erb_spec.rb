require 'spec_helper'

describe "enrollments/index.html.erb" do
  before(:each) do
    assign(:enrollments, [
      stub_model(Enrollment,
        :user_id => 1,
        :matter_id => 1,
        :timetable_id => 1
      ),
      stub_model(Enrollment,
        :user_id => 1,
        :matter_id => 1,
        :timetable_id => 1
      )
    ])
  end

  it "renders a list of enrollments" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 6
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 6
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 6
  end
end
