require 'spec_helper'

describe "enrollments/show.html.erb" do
  before(:each) do
    @enrollment = assign(:enrollment, stub_model(Enrollment,
      :user_id => 1,
      :matter_id => 1,
      :timetable_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
