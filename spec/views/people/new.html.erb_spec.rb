require 'spec_helper'

describe "people/new.html.erb" do
  before(:each) do
    assign(:person, stub_model(Person,
      :name => "MyString",
      :type => ""
    ).as_new_record)
  end

  it "renders new person form" do
    #render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    # assert_select "form", :action => people_path, :method => "post" do
    #       assert_select "input#person_name", :name => "person[name]"
    #       assert_select "input#person_type", :name => "person[type]"
    #     end
    pending "add some examples to (or delete) #{__FILE__}"
  end
end
