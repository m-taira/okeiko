require 'rails_helper'

describe "SystemTest", type: :system do
  it "サイト名が表示されていること" do
    visit schools_path

    expect(page).to have_content 'おけいこ'
  end
end