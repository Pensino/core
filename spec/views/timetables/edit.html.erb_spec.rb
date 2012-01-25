require 'spec_helper'

describe "timetables/edit.html.erb" do
  before(:each) do
    @timetable = assign(:timetable, stub_model(Timetable,
      :grids => nil,
      :name => "MyString",
      :description => "MyString"
    ))
  end

  it "renders the edit timetable form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => timetables_path(@timetable), :method => "post" do
      assert_select "input#timetable_name", :name => "timetable[name]"
      assert_select "input#timetable_description", :name => "timetable[description]"
    end
  end
end
