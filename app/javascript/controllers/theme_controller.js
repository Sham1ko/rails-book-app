import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="theme"
export default class extends Controller {
  static targets = ["icon"]

  connect() {
    const savedTheme = localStorage.getItem("theme")
    const isDark = savedTheme === "dark"
    document.documentElement.classList.toggle("dark", isDark)
    this.iconTarget.textContent = isDark ? "🌚" : "🌞"
  }

  toggle() {
    const html = document.documentElement
    const isDark = html.classList.toggle("dark")
    localStorage.setItem("theme", isDark ? "dark" : "light")
    this.iconTarget.textContent = isDark ? "🌚" : "🌞"
  }
}
