import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["navigation", "pageup", "upbar", "textbar", "navtel", "logo", "menuLink", "burgerMenu"];

  connect() {
    if( window.matchMedia("(min-width:1000px)").matches){
      window.addEventListener("scroll", this.updatePositionForDesktop);
    }

    if(window.matchMedia("(max-width:1000px)").matches) {
      window.addEventListener("scroll", this.updatePositionForMobile);
    }
  }

  updatePositionForDesktop = () => {
    const navigation = this.navigationTargets;
    const pageup = this.pageupTargets;
    const upbar = this.upbarTargets;
    const textbar = this.textbarTargets;
    const rects = []

    pageup.forEach((page) => {
      const rect = page.getBoundingClientRect();
      rects.push(rect)
    });

    rects.forEach((rect) => {
      const top = rect.top;

      if(top <= 108){
        navigation[0].classList.add("seen");
        navigation[0].classList.add("move-down");
        upbar[0].classList.add("move-down-call");
        textbar[0].classList.add("show-call");
      } else {
        navigation[0].classList.remove("seen");
        navigation[0].classList.remove("move-down");
        upbar[0].classList.remove("move-down-call");
        textbar[0].classList.remove("show-call");
      }
    })
  }

  updatePositionForMobile = () => {
    const navigation = this.navigationTargets;
    const pageup = this.pageupTarget;
    const upbar = this.upbarTargets;
    const textbar = this.textbarTargets;
    const navtel = this.navtelTarget;
    const pagePosition = pageup.getBoundingClientRect();

    const pageTop = pagePosition.top;
    if (pageTop <= 203 && navtel.style.opacity === "1"){
      this.menuAtTop(navtel, upbar, navigation)
    } else if (pageTop <= 97 && navtel.classList.contains("opacity")){
      this.displayPhoneNumber(navtel, navigation, upbar, textbar)
    } else {
      if(navtel.style.opacity === "1") navtel.style.backgroundColor = "rgba(222, 208, 199,0)"
      this.hidePhoneNumber(navtel, upbar, navigation)
    }
  }

  hidePhoneNumber(navtel, upbar, navigation) {
    navtel.classList.remove("display-menu");
    upbar[1].classList.remove("move-down-call");
    navigation[1].style.opacity = "1"
    navigation[1].style.top = "0px";
    navtel.style.top = "112px";
    navigation[1].classList.remove("seen_tel");
  }

  displayPhoneNumber(navtel, navigation, upbar, textbar) {
    navtel.classList.remove("display-menu");
    navigation[1].classList.add("seen_tel");
    navigation[1].style.top = "25px";
    navtel.style.top = '25px';
    navigation[1].classList.add("move-down-tel");
    upbar[1].classList.add("move-down-call");
    textbar[1].classList.add("show-call");
    // put the button here in js
  }

  menuAtTop(navtel, upbar, navigation) {
    navtel.classList.remove("display-menu");
    window.location.pathname.includes("services") ? navtel.style.top = "-1px" : navtel.style.top = "-33px"
    upbar[1].classList.remove("move-down-call");
    navtel.style.backgroundColor = "#f6f3f0";
    navigation[1].style.opacity = "0";
    navigation[1].style.top = "0px";
  }

  displayMenu() {
    const navtel = this.navtelTarget;
    const navigation = this.navigationTargets;
    const pageup = this.pageupTarget;
    const upbar = this.upbarTargets;
    const textbar = this.textbarTargets;
    const menuLinks = this.menuLinkTargets;
    const pagePosition = pageup.getBoundingClientRect();

    if (window.location.pathname.includes("services")) {
      navtel.classList.add("seen_tel");
      upbar[1].classList.add("move-down-call");
      navtel.style.opacity = "1";
      navtel.style.top = '25px';
      navtel.style.transition = "opacity 1s linear, top 1s linear";
      navtel.classList.remove("display-menu");
      textbar[1].classList.add("show-call");
    }

    menuLinks.forEach((link) => {
      link.classList.remove('d-none');
    })

    const pageTop = pagePosition.top;
    let rectNav = navigation[1].getBoundingClientRect();
    const topNav = rectNav.top;
    window.location.pathname.includes("contacts")
      ? navtel.style.backgroundColor = "rgba(244, 244, 244,1)"
      : navtel.style.backgroundColor = "rgba(222, 208, 199,0)"

    if ((topNav === 0) && (pageTop >= 267) && !window.location.pathname.includes("contacts")) {
        this.displayOrHideMenuHomeUp(navtel)
    } else {
      navtel.style.backgroundColor = "#f6f3f0"
      this.displayOrHideMenu(navtel, upbar, textbar)
    }
  }

  displayOrHideMenu(navtel, upbar, textbar) {
    const burger = this.burgerMenuTarget
    navtel.style.transition = "opacity 1s linear, top 1s linear";
    if (navtel.classList.contains("show-call")) {
      navtel.classList.remove("display-menu", "show-call");
      navtel.style.top = '-15px';
      navtel.classList.add("seen_tel", "opacity");
      navtel.style.opacity = "0";
      upbar[1].style.transition = "opacity 1s linear, top 1s linear";
      burger.style.opacity = 0
    } else {
      if (window.location.pathname.includes("services")) {
        textbar[1].style.top = "-20px";
      } else {
        navtel.classList.remove("display-menu");
        navtel.style.top = '137px';
        navtel.style.opacity = "1";
      }

      window.location.pathname.includes("contacts")
        ? navtel.style.backgroundColor = "#F4F4F4"
        : navtel.style.backgroundColor = "#f6f3f0"

      navtel.classList.remove("opacity");
      navtel.classList.add("show-call");
      navtel.style.zIndex = "90"
      setTimeout(() => {
        burger.style.opacity = 1
      }, "900");
    }

  }

  displayOrHideMenuHomeUp(navtel) {
    navtel.classList.remove("display-menu");
    navtel.style.transition = "opacity 1s linear, top 1s linear";
    if (navtel.classList.contains("opacity")) {
      navtel.classList.remove("opacity");
      navtel.style.opacity = "1";
      navtel.style.backgroundImage = "linear-gradient(to top, rgba(255, 255, 255, 1), transparent)";
      navtel.style.top = '112px';
    } else {
      navtel.style.opacity = "0";
      navtel.style.top = '0px';
      navtel.classList.add("opacity");
    }
  }
}
