require 'spec_helper'

describe "timetables/new.html.erb" do
  before(:each) do
    assign(:timetable, stub_model(Timetable,
      :grids => nil,
      :name => "MyString",
      :description => "MyString"
    ).as_new_record)
  end

  it "renders new timetable form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => timetables_path, :method => "post" do
      assert_select "input#timetable_grids", :name => "timetable[grids]"
      assert_select "input#timetable_name", :name => "timetable[name]"
      assert_select "input#timetable_description", :name => "timetable[description]"
    end
  end
end
