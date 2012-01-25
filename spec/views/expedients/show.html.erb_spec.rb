require 'spec_helper'

describe "expedients/show.html.erb" do
  before(:each) do
    @expedient = assign(:expedient, stub_model(Expedient,
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
