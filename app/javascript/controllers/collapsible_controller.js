import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["content", "toggle", "toggleIcon"]
  static classes = ["collapsed", "expanded"]

  connect() {
    this.#updateUI()
  }

  toggle() {
    this.contentTarget.classList.toggle("hidden")
    this.#updateUI()
  }


  // private

  #updateUI() {
    const isOpen = !this.contentTarget.classList.contains("hidden")

    if (this.hasToggleIconTarget) {
      this.toggleIconTarget.classList.toggle("rotate-180", isOpen)
    }

    this.toggleTarget.setAttribute("aria-expanded", String(isOpen)) // add accessibility

    this.element.classList.toggle(this.expandedClass, isOpen)
    this.element.classList.toggle(this.collapsedClass, !isOpen)
  }
}
