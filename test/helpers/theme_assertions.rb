module ThemeAssertions
  def assert_theme(theme)
    case theme
    when :dark
      assert find("html")[:class].include?("dark")
      assert find(".sun-icon").visible?
    when :light
      assert_not find("html")[:class].include?("dark")
      assert find(".moon-icon").visible?
    else
      raise ArgumentError, "Unknown theme: #{theme.inspect}"
    end
  end
end
