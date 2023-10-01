import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["navigation", "pageup", "upbar", "textbar", "navtel", "logo", "menuLink"];

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
      // console.log(top)

      if(top <= 108){
        // console.log("start here")
        // console.log("in here")
        navigation[0].classList.add("seen");
        navigation[0].classList.add("move-down");
        upbar[0].classList.add("move-down-call");
        textbar[0].classList.add("show-call");
      } else {
        // console.log("in there")
        navigation[0].classList.remove("seen");
        navigation[0].classList.remove("move-down");
        upbar[0].classList.remove("move-down-call");
        textbar[0].classList.remove("show-call");
      }
    })
  }

  updatePositionForMobile = (event) => {
    event.preventDefault();
    const navigation = this.navigationTargets;
    const pageup = this.pageupTargets;
    const upbar = this.upbarTargets;
    const textbar = this.textbarTargets;
    const navtel = this.navtelTarget;
    const rects = []

    pageup.forEach((page) => {
      const rect = page.getBoundingClientRect();
      rects.push(rect)
    });

    rects.forEach((rect) => {
      const top = rect.top;
      // console.log(top);

      if (top <= 203 && navtel.style.opacity === "1"){
         console.log("in-one");
        navtel.classList.remove("display-menu");
        if (window.location.pathname === "/en/services" || window.location.pathname === "/gr/services") {
          navtel.style.top = "-1px";
        } else {
          navtel.style.top = "-33px";
        }
        upbar[1].classList.remove("move-down-call");
        navtel.style.backgroundColor = "#f6f3f0";
        navigation[1].style.opacity = "0";
        navigation[1].style.top = "0px";
      } else if (top <= 97 && navtel.classList.contains("opacity")){
         console.log("in-two");
        navtel.classList.remove("display-menu");
        navigation[1].classList.add("seen_tel");
        navigation[1].style.top = "25px";
        navtel.style.top = '25px';
        navigation[1].classList.add("move-down-tel");
        upbar[1].classList.add("move-down-call");
        textbar[1].classList.add("show-call");
        // put the button here in js
      } else {
        if(navtel.style.opacity === "1"){
           console.log("in-three");
          navtel.classList.remove("display-menu");
          navtel.style.backgroundColor = "rgba(222, 208, 199,0)"
          navtel.style.top = "-15px";
          navigation[1].style.opacity = "1"
          navigation[1].style.top = "0px";
          navtel.style.top = "112px";
        }
         console.log("in-four");
        navtel.classList.remove("display-menu");
        upbar[1].classList.remove("move-down-call");
        navtel.style.top = "-15px";
        navigation[1].style.opacity = "1"
        navigation[1].style.top = "0px";
        navtel.style.top = "112px";
        navigation[1].classList.remove("seen_tel");
      }
    })
  }

  displayMenu(event) {
    console.log("in")
    event.preventDefault();
    const navtel = this.navtelTarget;
    const navigation = this.navigationTargets;
    const pageup = this.pageupTargets;
    const upbar = this.upbarTargets;
    const textbar = this.textbarTargets;
    const menuLinks = this.menuLinkTargets;
    const rects = []

    if (window.location.pathname === "/en/services" || window.location.pathname === "/gr/services") {
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

    pageup.forEach((page) => {
      const rect = page.getBoundingClientRect();
      rects.push(rect)
    });

    rects.forEach((rect) => {
      const top = rect.top;
      let rectNav = navigation[1].getBoundingClientRect();
      const topNav = rectNav.top;
      //  console.log(topNav)
      if (window.location.pathname === "/en/contacts" || window.location.pathname === "/gr/contacts") {
        navtel.style.backgroundColor = "rgba(244, 244, 244,1)";
      } else {
        navtel.style.backgroundColor = "rgba(222, 208, 199,0)";
      }

      if ((topNav === 0) && (top >= 267)) {
          console.log("112px")
        if(navtel.classList.contains("opacity")){
           console.log("in-one-one")
          navtel.classList.remove("display-menu");
          // navtel.classList.remove("d-none");
          navtel.style.opacity = "1";
          navtel.style.backgroundImage = "linear-gradient(to top, rgba(255, 255, 255, 1), transparent)";
          navtel.style.top = '112px';
          navtel.style.transition = "opacity 1s linear, top 1s linear";
          navtel.classList.remove("opacity");
        } else {
           console.log("in-two-two")
          navtel.classList.remove("display-menu");
          navtel.style.opacity = "0";
          navtel.style.top = '0px';
          navtel.style.transition = "opacity 1s linear, top 1s linear";
          navtel.classList.add("opacity");
        }
      } else {
        console.log("137px")
        navtel.style.backgroundColor = "#f6f3f0"
        if (navtel.classList.contains("show-call")) {
         console.log("in-three-three")
          navtel.classList.remove("display-menu");
          navtel.style.top = '-15px';
          navtel.classList.add("seen_tel");
          navtel.style.opacity = "0";
          navtel.style.transition = "opacity 1s linear, top 1s linear";
          upbar[1].style.transition = "opacity 1s linear, top 1s linear";
          navtel.classList.add("opacity");
          navtel.classList.remove("show-call");
        } else {
         console.log("in-four-four")
          if (window.location.pathname === "/en/services" || window.location.pathname === "/gr/services") {
            textbar[1].style.top = "-20px";
          } else {
            navtel.classList.remove("display-menu");
            navtel.style.top = '160px';
            navtel.style.opacity = "1";
          }
          if (window.location.pathname === "/en/contacts" || window.location.pathname === "/gr/contacts") {
            navtel.style.backgroundColor = "#f6f3f0";
          } else {
            navtel.style.backgroundColor = "#f6f3f0";
          }
          navtel.style.transition = "opacity 1s linear, top 1s linear";
          navtel.classList.remove("opacity");
          navtel.classList.add("show-call");
        }
      }
    })
  }
}
