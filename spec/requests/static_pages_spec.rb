require 'spec_helper'

describe "Home page" do

  it "should have the content 'easyMetrics'" do
    visit '/static_pages/home'
    expect(page).to have_content('easyMetrics')
  end
end
