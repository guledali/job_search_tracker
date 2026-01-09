import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["toggle", "icon"]
  static classes = ["dark", "light"]

  connect() {
    this.loadTheme()
    this.updateIcon()
  }

  toggle() {
    this.htmlElement.classList.toggle("dark")
    this.saveTheme()
    this.updateIcon()
  }

  loadTheme() {
    const theme = localStorage.getItem("theme") || "light"
    if (theme === "dark") {
      this.htmlElement.classList.add("dark")
    }
  }

  saveTheme() {
    if (this.htmlElement.classList.contains("dark")) {
      localStorage.setItem("theme", "dark")
    } else {
      localStorage.setItem("theme", "light")
    }
  }

  updateIcon() {
    const isDark = this.htmlElement.classList.contains("dark")
    const sunIcon = this.iconTarget.querySelector(".sun-icon")
    const moonIcon = this.iconTarget.querySelector(".moon-icon")
    
    if (isDark) {
      sunIcon.classList.remove("hidden")
      moonIcon.classList.add("hidden")
    } else {
      sunIcon.classList.add("hidden")
      moonIcon.classList.remove("hidden")
    }
  }

  get htmlElement() {
    return document.documentElement
  }
}