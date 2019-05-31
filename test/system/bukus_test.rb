require "application_system_test_case"

class BukusTest < ApplicationSystemTestCase
  setup do
    @buku = bukus(:one)
  end

  test "visiting the index" do
    visit bukus_url
    assert_selector "h1", text: "Bukus"
  end

  test "creating a Buku" do
    visit bukus_url
    click_on "New Buku"

    click_on "Create Buku"

    assert_text "Buku was successfully created"
    click_on "Back"
  end

  test "updating a Buku" do
    visit bukus_url
    click_on "Edit", match: :first

    click_on "Update Buku"

    assert_text "Buku was successfully updated"
    click_on "Back"
  end

  test "destroying a Buku" do
    visit bukus_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Buku was successfully destroyed"
  end
end
