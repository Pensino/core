require 'spec_helper'

describe "expedients/edit.html.erb" do
  before(:each) do
    @expedient = assign(:expedient, stub_model(Expedient,
      :day_of_week => "monday",
      :quantity_lessons => 1
    ))
  end

  it "renders the edit expedient form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => expedients_path(@expedient), :method => "post" do
      assert_select "select#expedient_day_of_week", :name => "expedient[day_of_week]"
      assert_select "input#expedient_quantity_lessons", :name => "expedient[quantity_lessons]"
    end
  end
end
