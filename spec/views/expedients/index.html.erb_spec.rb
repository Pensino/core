require 'spec_helper'

describe "expedients/index.html.erb" do
  before(:each) do
    assign(:expedients, [
      stub_model(Expedient,
        :day_of_week => "Day Of Week",
        :quantity_lessons => 1
      ),
      stub_model(Expedient,
        :day_of_week => "Day Of Week",
        :quantity_lessons => 1
      )
    ])
  end

  it "renders a list of expedients" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Day Of Week".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
