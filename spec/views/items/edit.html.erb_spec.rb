require 'spec_helper'

describe "items/edit" do
  before(:each) do
    @item = assign(:item, stub_model(Item,
      :name => "MyString",
      :description => "MyText",
      :price => 1.5,
      :count => 1,
      :categories => "MyText"
    ))
  end

  it "renders the edit item form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", item_path(@item), "post" do
      assert_select "input#item_name[name=?]", "item[name]"
      assert_select "textarea#item_description[name=?]", "item[description]"
      assert_select "input#item_price[name=?]", "item[price]"
      assert_select "input#item_count[name=?]", "item[count]"
      assert_select "textarea#item_categories[name=?]", "item[categories]"
    end
  end
end
