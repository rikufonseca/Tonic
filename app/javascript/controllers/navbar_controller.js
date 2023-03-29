import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["navigation", "homepage", "upbar", "textbar", "navtel", "logo" ];

  connect() {

    const navigation = this.navigationTargets;
    const homepage = this.homepageTarget;
    const upbar = this.upbarTargets;
    console.log(upbar);
    const textbar = this.textbarTargets;
    console.log(textbar);
    const navtel = this.navtelTarget;
    const logo = this.logoTarget;

    if( window.matchMedia("(min-width:1000px)").matches){
      function updatePosition() {
        let rect = homepage.getBoundingClientRect();
        var top = rect.top;

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
        console.log(top);

        if (top <= 203 && navtel.classList.contains("show-call")){
          navtel.style.top = "0px";
          navtel.classList.add("seen_tel");
          logo.style.marginTop = "-138px"
          console.log("not ok")
        } else if (top <= 97 && !navtel.classList.contains("show-call")){
          navigation[1].classList.add("seen_tel");
          navigation[1].style.top = "25px";
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

    if(navtel.classList.contains("show-call") ) {
      navtel.classList.add("fade-out");
      navtel.classList.remove("show-call");
    } else {
      navtel.classList.add("show-call");
      navtel.classList.remove("fade-out");
    }
  }
}
