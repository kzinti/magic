require 'spec_helper'

describe "cards/edit" do
  before(:each) do
    @card = assign(:card, stub_model(Card,
      :name => "MyString",
      :mana => "MyString",
      :card_type => "MyString",
      :color => "MyString",
      :power => "",
      :health => "",
      :body => "MyString"
    ))
  end

  it "renders the edit card form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => cards_path(@card), :method => "post" do
      assert_select "input#card_name", :name => "card[name]"
      assert_select "input#card_mana", :name => "card[mana]"
      assert_select "input#card_card_type", :name => "card[card_type]"
      assert_select "input#card_color", :name => "card[color]"
      assert_select "input#card_power", :name => "card[power]"
      assert_select "input#card_health", :name => "card[health]"
      assert_select "input#card_body", :name => "card[body]"
    end
  end
end
