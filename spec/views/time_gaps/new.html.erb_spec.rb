require 'spec_helper'

describe "time_gaps/new.html.erb" do
  before(:each) do
    assign(:time_gap, stub_model(TimeGap,
      :day_of_week => "MyString",
      :quantity_lessons => 1
    ).as_new_record)
  end

  it "renders new time_gap form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => time_gaps_path, :method => "post" do
      assert_select "select#time_gap_day_of_week", :name => "time_gap[day_of_week]"
      assert_select "input#time_gap_quantity_lessons", :name => "time_gap[quantity_lessons]"
    end
  end
end
