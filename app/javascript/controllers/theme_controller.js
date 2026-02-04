import { Controller } from "@hotwired/stimulus"
import { setLocaleStorage, readLocaleStorage } from "helpers/localstorage_helpers"

export default class extends Controller {
  static targets = ["htmlRoot", "sunIcon", "moonIcon"]

  connect() {
    this.loadTheme()
    this.#updateIcon()
  }

  toggle() {
    this.htmlRootTarget.classList.toggle("dark")

    setLocaleStorage("theme", this.isDark ? "dark" : "light")

    this.#updateIcon()
  }

  loadTheme() {
    const theme = readLocaleStorage("theme") || "light"

    if (theme === "dark") {
      this.htmlRootTarget.classList.add("dark")
    }
  }

  get isDark() {
    return this.htmlRootTarget.classList.contains("dark")
  }

  // private

  #updateIcon() {
    if (this.isDark) {
      this.sunIconTarget.classList.remove("hidden")
      this.moonIconTarget.classList.add("hidden")
    } else {
      this.sunIconTarget.classList.add("hidden")
      this.moonIconTarget.classList.remove("hidden")
    }
  }
}
