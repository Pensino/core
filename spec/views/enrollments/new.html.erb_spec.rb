require 'spec_helper'

describe "enrollments/new.html.erb" do
  before(:each) do
    assign(:enrollment, stub_model(Enrollment,
      :user_id => 1,
      :matter_id => 1,
      :timetable_id => 1
    ).as_new_record)
  end

  it "renders new enrollment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => enrollments_path, :method => "post" do
      assert_select "input#enrollment_user_id", :name => "enrollment[user_id]"
      assert_select "input#enrollment_matter_id", :name => "enrollment[matter_id]"
      assert_select "input#enrollment_timetable_id", :name => "enrollment[timetable_id]"
    end
  end
end
