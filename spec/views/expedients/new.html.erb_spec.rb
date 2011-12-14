require 'spec_helper'

describe "expedients/new.html.erb" do
  before(:each) do
    assign(:expedient, stub_model(Expedient,
      :day_of_week => "MyString",
      :quantity_lessons => 1
    ).as_new_record)
  end

  it "renders new expedient form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => expedients_path, :method => "post" do
      assert_select "input#expedient_day_of_week", :name => "expedient[day_of_week]"
      assert_select "input#expedient_quantity_lessons", :name => "expedient[quantity_lessons]"
    end
  end
end
