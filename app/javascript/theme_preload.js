// theme_preload.js

try {

  const theme = localStorage.getItem('theme');

  if (theme === 'dark') {
    document.documentElement.classList.add('dark');
  }

} catch (error) {
  console.warn('Theme loading failed:', error.message);
}
