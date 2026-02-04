require "application_system_test_case"
require "helpers/theme_assertions"

class ThemesTest < ApplicationSystemTestCase
  include ThemeAssertions

  def setup
    visit jobs_path
  end


  test "toggles between light and dark themes" do
    assert_theme :light

    toggle_theme

    assert_theme :dark
  end

  test "persists theme across page reloads" do
    visit new_job_path

    toggle_theme

    assert_theme :dark

    reload_page # reload -> selected theme should presist in other places

    assert_theme :dark
  end


  test "loads saved theme from localStorage" do
    apply_theme :light

    visit new_job_path

    assert_theme :light
  end

  private

    def apply_theme(theme)
      page.execute_script("localStorage.setItem('theme', '#{theme}')")
    end

    def toggle_theme
      find("[data-test='toggle-theme']").click
    end

    def reload_page
      visit current_url
    end
end
