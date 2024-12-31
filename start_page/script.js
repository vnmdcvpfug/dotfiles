document.getElementById('search-bar').addEventListener('keypress', function(event) {
    if (event.key === 'Enter') {
      const query = event.target.value.trim();  
      if (query) {
        window.location.href = `https://duckduckgo.com/?q=${encodeURIComponent(query)}`;
      } else {
        alert("Please enter a search query.");
      }
    }
  });
