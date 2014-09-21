require 'spec_helper'

describe "items/show" do
  before(:each) do
    @item = assign(:item, stub_model(Item,
      :name => "Name",
      :description => "MyText",
      :price => 1.5,
      :count => 1,
      :categories => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
    rendered.should match(/1.5/)
    rendered.should match(/1/)
    rendered.should match(/MyText/)
  end
end
