require 'spec_helper'

describe "time_gaps/show.html.erb" do
  before(:each) do
    @time_gap = assign(:time_gap, stub_model(TimeGap,
      :day_of_week => "Day Of Week",
      :quantity_lessons => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Day Of Week/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
