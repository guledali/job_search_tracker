export function setLocaleStorage(name, value = "") {
  localStorage.setItem(name, value)
}

export function readLocaleStorage(name) {
  return localStorage.getItem(name)
}

