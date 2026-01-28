require "application_system_test_case"

class CollapsiblesTest < ApplicationSystemTestCase
  def setup
    visit new_job_path
  end

  test "collapsible toggles correctly" do
    toggle = find("[data-collapsible-target='toggle']", visible: true, wait: 5)
    content = find("[data-collapsible-target='content']", visible: true, wait: 5)
    icon = find("[data-collapsible-target='toggleIcon']", visible: true, wait: 5)

    assert toggle["aria-expanded"] == "true"
    assert icon[:class].include?("rotate-180")
    assert_not content[:class].include?("hidden")

    toggle.click

    assert toggle["aria-expanded"] == "false"
    assert_not icon[:class].include?("rotate-180")
    assert content[:class].include?("hidden")
  end

  test "form fields hide and show correctly" do
    toggle = find("[data-collapsible-target='toggle']", visible: true, wait: 5)

    assert find("#description", visible: true)

    toggle.click

    assert find("#description", visible: false)

    toggle.click

    assert find("#description", visible: true)
  end
end
