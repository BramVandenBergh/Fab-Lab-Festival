{
  // const handleScroll = () => {
  //   // 
  //   const measurescroll = window.pageYOffset;
  //   //console.log(measurescroll)
  //   if (measurescroll > 110) {
  //     console.log('Current scroll from the top: ' + window.pageYOffset);
  //     document.querySelector(`.header`).classList.add('scrolling');
  //     document.querySelector(`.intro`).classList.add('intro__scrolling');
  //   } else {
  //     if (measurescroll < 110) {
  //       document.querySelector(`.header`).classList.remove('scrolling')
  //     };
  //   }

  // };

  

  const init = () => {
    window.addEventListener(`scroll`, handleScroll);
  };


  const handleScroll = () => {
    const navlogo = document.querySelector(`.navlogo`);
    const scrolldowntext = document.querySelector(`.intro__scroll`);
    const offset = window.pageYOffset;
    const menu = document.querySelector(`.menu`);
    const cart = document.querySelector(`.viewcart`);
    const menuitem1 = document.querySelector(`.menu__item--item1`);
    const menuitem2 = document.querySelector(`.menu__item--item2`);
    const menuitem3 = document.querySelector(`.menu__item--item3`);
    const menuitem4 = document.querySelector(`.menu__item--item4`);
    
    if (offset > 50) {
      navlogo.setAttribute("src", "assets/img/logo_small.svg");
      menu.style.paddingBottom = "2rem";
      menuitem1.style.marginTop = "0";
      menuitem2.style.marginTop = "0";
      menuitem3.style.marginTop = "0";
      menuitem4.style.marginTop = "0";
      cart.style.marginTop = "-10rem";
      if (currentPage === `home`) {
        scrolldowntext.style.opacity = "0";
        scrolldowntext.style.transition = "opacity 0.5s ease-out";  
      };
      
    } else {
      navlogo.setAttribute("src", "assets/img/logo_big.svg");
      menu.style.paddingBottom = "0";
      menuitem1.style.marginTop = "-10rem";
      menuitem2.style.marginTop = "-10rem";
      menuitem3.style.marginTop = "-10rem";
      menuitem4.style.marginTop = "-10rem";
      cart.style.marginTop = "-28rem";
      if (currentPage === `home`) {
        scrolldowntext.style.opacity = "100";
        scrolldowntext.style.transition = "opacity 0.5s ease-in";
      }
    };
  };


  init();
}