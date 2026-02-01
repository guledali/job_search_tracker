import { Controller } from "@hotwired/stimulus"
import { setLocaleStorage, readLocaleStorage } from "helpers/localstorage_helpers"

export default class extends Controller {
  static targets = ["toggle", "icon"]

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
    const theme = readLocaleStorage("theme") || "light"
    if (theme === "dark") {
      this.htmlElement.classList.add("dark")
    }
  }

  saveTheme() {
    const isDark = this.htmlElement.classList.contains("dark")
    setLocaleStorage("theme", isDark ? "dark" : "light")
  }

  updateIcon() {
    const isDark = this.htmlElement.classList.contains("dark")
    const sunIcon = this.iconTarget.querySelector(".sun-icon")
    const moonIcon = this.iconTarget.querySelector(".moon-icon")
    
    if (!sunIcon || !moonIcon) return
    
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