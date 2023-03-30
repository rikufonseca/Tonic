import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["navigation", "homepage", "upbar", "textbar", "navtel", "logo" ];

  connect() {

    const navigation = this.navigationTargets;
    const homepage = this.homepageTarget;
    const upbar = this.upbarTargets;
    const textbar = this.textbarTargets;
    const navtel = this.navtelTarget;
    const logo = this.logoTarget;

    if( window.matchMedia("(min-width:1000px)").matches){
      function updatePosition() {
        let rect = homepage.getBoundingClientRect();
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
      }
      window.addEventListener("scroll", updatePosition);
    }

    if(window.matchMedia("(max-width:1000px)").matches) {

      function updatePositionWithMenuOpen() {
        let rect = homepage.getBoundingClientRect();
        const top = rect.top;
    //    console.log(top);

        if (top <= 203 && navtel.classList.contains("show-call")){
          navtel.style.top = "-33px";
          navtel.classList.add("seen_tel");
          logo.style.marginTop = "-159px"
          console.log("not ok")
        } else if (top <= 97 && !navtel.classList.contains("show-call")){
          navigation[1].classList.add("seen_tel");
          navigation[1].style.top = "25px";
          navtel.style.top = '25px';
          navigation[1].classList.add("move-down-tel");
          upbar[1].classList.add("move-down-call");
          textbar[1].classList.add("show-call");
          console.log("ok");
        } else if (top >= 0 && navigation[1].classList.contains("seen_tel")){
          navigation[1].classList.remove("seen_tel");
          navigation[1].style.top = "0px";
          navigation[1].classList.remove("move-down-tel");
          upbar[1].classList.remove("move-down-call");
          textbar[1].classList.remove("show-call");
        } else {
          console.log("thv gkamises")
        }
      }
      window.addEventListener("scroll", updatePositionWithMenuOpen);
    }
  }

  displayMenu() {
    const navtel = this.navtelTarget;
    const navigation = this.navigationTargets;
    let rectNav = navigation[1].getBoundingClientRect();
    const topNav = rectNav.top;
    console.log(topNav);

    if(topNav === 0){
      if(navtel.classList.contains("show-call")) {
        navtel.classList.add("fade-out");
        navtel.classList.remove("show-call");
        navtel.style.top = '0px';
      } else {
        navtel.style.top = '137px';
        navtel.classList.add("show-call");
        navtel.classList.remove("fade-out");
      }
    } else {
      navtel.style.backgroundColor = "#ded0c7"
      if (navtel.classList.contains("show-call")) {
        navtel.classList.add("fade-out");
        navtel.classList.remove("show-call");
        navtel.style.top = '25px';
      } else {
        navtel.style.top = '137px';
        navtel.classList.add("show-call");
        navtel.classList.remove("fade-out");
      }
    }
  }
}
