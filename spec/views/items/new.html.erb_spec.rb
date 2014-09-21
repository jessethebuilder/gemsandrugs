require 'spec_helper'

describe "items/new" do
  before(:each) do
    assign(:item, stub_model(Item,
      :name => "MyString",
      :description => "MyText",
      :price => 1.5,
      :count => 1,
      :categories => "MyText"
    ).as_new_record)
  end

  it "renders new item form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", items_path, "post" do
      assert_select "input#item_name[name=?]", "item[name]"
      assert_select "textarea#item_description[name=?]", "item[description]"
      assert_select "input#item_price[name=?]", "item[price]"
      assert_select "input#item_count[name=?]", "item[count]"
      assert_select "textarea#item_categories[name=?]", "item[categories]"
    end
  end
end
