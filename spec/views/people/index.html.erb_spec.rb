require 'spec_helper'

describe "people/index.html.erb" do
  before(:each) do
    assign(:people, [
      stub_model(Person,
        :name => "Name",
        :type => "Type"
      ),
      stub_model(Person,
        :name => "Name",
        :type => "Type"
      )
    ])
  end

  it "renders a list of people" do
    # render
    #     # Run the generator again with the --webrat flag if you want to use webrat matchers
    #     assert_select "tr>td", :text => "Name".to_s, :count => 2
    #     # Run the generator again with the --webrat flag if you want to use webrat matchers
    #     assert_select "tr>td", :text => "Type".to_s, :count => 2
    #   end
    pending "add some examples to (or delete) #{__FILE__}"
    
  end
end
