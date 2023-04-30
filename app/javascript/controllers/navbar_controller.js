import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["navigation", "pageup", "upbar", "textbar", "navtel", "logo"];

  connect() {
    const navigation = this.navigationTargets;
    const pageup = this.pageupTargets;
    const upbar = this.upbarTargets;
    const textbar = this.textbarTargets;
    const navtel = this.navtelTarget;

    if( window.matchMedia("(min-width:1000px)").matches){
      function updatePosition() {
        const rects = []
        pageup.forEach((page) => {
          const rect = page.getBoundingClientRect();
          rects.push(rect)
        });
        rects.forEach((rect) => {
          const top = rect.top;
          if(top <= 0){
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
      window.addEventListener("scroll", updatePosition);
    }

    if(window.matchMedia("(max-width:1000px)").matches) {

      function updatePositionWithMenuOpen() {
        const rects = []
        pageup.forEach((page) => {
          const rect = page.getBoundingClientRect();
          rects.push(rect)
        });
        rects.forEach((rect) => {
          const top = rect.top;
          if (top <= 203 && navtel.classList.contains("show-call")){
            navtel.style.top = "-33px";
            navtel.style.backgroundColor = "rgb(222, 208, 199)"
            upbar[1].classList.remove("move-down-call");
            navtel.classList.add("seen_tel");
            navigation[1].style.opacity = "0";
            navigation[1].style.top = "0px";
            console.log("<=203")
          } else if (top <= 97 && !navtel.classList.contains("show-call")){
            navigation[1].classList.add("seen_tel");
            navigation[1].style.top = "25px";
            navtel.style.top = '25px';
            navigation[1].classList.add("move-down-tel");
            upbar[1].classList.add("move-down-call");
            textbar[1].classList.add("show-call");
            console.log("<=97");
          } else if (top >= 0 && navigation[1].classList.contains("seen_tel")){
            navigation[1].classList.remove("seen_tel");
            navigation[1].style.top = "0px";
            navigation[1].classList.remove("move-down-tel");
            upbar[1].classList.remove("move-down-call");
            textbar[1].classList.remove("show-call");
            console.log(">=0")
          } else {
            if (navtel.style.backgroundColor == "#ded0c7" && top >= 284 ){
              navtel.style.top = "-15px";
              console.log("scroll-else-1");
            } else {
              navigation[1].style.opacity = "1"
              navigation[1].style.top = "0px";
              navtel.style.top = "112px";
              navtel.style.backgroundColor = "rgba(222, 208, 199,0)"
              console.log("transparent")
            }
            console.log("else")
          }
        })
      }
      window.addEventListener("scroll", updatePositionWithMenuOpen);
    }
  }

  displayMenu(event) {
    event.preventDefault();
    const navtel = this.navtelTarget;
    const navigation = this.navigationTargets;
    const pageup = this.pageupTargets;
    const rects = []
    pageup.forEach((page) => {
      const rect = page.getBoundingClientRect();
      rects.push(rect)
    });
    rects.forEach((rect) => {
      const top = rect.top;
      let rectNav = navigation[1].getBoundingClientRect();
      const topNav = rectNav.top;
   // console.log(topNav);
      if((topNav === 0) && (top >= 267)){
        if (window.location.pathname === "/en/contacts" || window.location.pathname === "/gr/contacts" ) {
          navtel.style.backgroundColor = "rgba(244, 244, 244,1)";
          console.log("opacity-1")
        } else {
          navtel.style.backgroundColor = "rgba(222, 208, 199,0)";
          console.log("opacity-0")
        }
        if(navtel.classList.contains("show-call") || navtel.classList.contains("display-menu")){
          navtel.classList.add("fade-out");
          navtel.classList.remove("show-call");
          navtel.classList.remove("display-menu");
          navtel.style.top = '0px';
          console.log("in")
        } else {
          console.log("in-2")
          navtel.style.top = '112px';
          navtel.classList.remove("fade-out");
          navtel.classList.remove("display-menu");
          navtel.classList.add("show-call");
        }
      } else {
        navtel.style.backgroundColor = "#ded0c7"
        if (navtel.classList.contains("show-call")) {
          navtel.classList.add("fade-out");
          navtel.classList.remove("show-call");
          navtel.style.top = '-15px';
          navtel.style.backgroundColor = "rgba(222, 208, 199, 0)";
          console.log("in-3")
        } else {
          console.log("in-4")
          navtel.style.top = '137px';
          navtel.classList.add("show-call");
          navtel.classList.remove("fade-out");
        }
      }
    })
  }
}
