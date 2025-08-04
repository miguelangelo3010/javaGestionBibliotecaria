const homeIcon = document.querySelector('.home-icon');
  const sidebarMenu = document.getElementById('sidebarMenu');

  let sidebarVisible = false;

  homeIcon.addEventListener('click', (e) => {
    e.preventDefault();
    sidebarVisible = !sidebarVisible;
    sidebarMenu.classList.toggle('active', sidebarVisible);
  });

  window.addEventListener('click', (e) => {
    if (sidebarVisible && !sidebarMenu.contains(e.target) && !homeIcon.contains(e.target)) {
      sidebarVisible = false;
      sidebarMenu.classList.remove('active');
    }
  });