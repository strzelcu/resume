(() => {
  const storageKey = 'resume-style';
  const root = document.documentElement;
  const styles = ['retro', 'rock', 'dnb', 'business'];
  let style = 'retro';

  try {
    const savedStyle = localStorage.getItem(storageKey);
    if (styles.includes(savedStyle)) {
      style = savedStyle;
    }
  } catch {
    // The picker still works when browser storage is unavailable.
  }

  root.dataset.resumeStyle = style;

  document.addEventListener('DOMContentLoaded', () => {
    const picker = document.querySelector('.resume-style-picker');
    picker.querySelector(`input[value="${style}"]`).checked = true;

    picker.addEventListener('change', (event) => {
      style = event.target.value;
      root.dataset.resumeStyle = style;
      try {
        localStorage.setItem(storageKey, style);
      } catch {
        // Keep the selected style for the current page.
      }
    });

    picker.hidden = false;
  });
})();
