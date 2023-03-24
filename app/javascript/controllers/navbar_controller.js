import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["navigation", "homepage", "upbar", "textbar", "navtel", "logo"];

  connect() {

    const navigation = this.navigationTarget;
    const homepage = this.homepageTarget;
    const upbar = this.upbarTarget;
    const textbar = this.textbarTarget;
    const navtel = this.navtelTarget;
    const logo = this.logoTarget;
    console.log(logo);

    if (window.matchMedia("(min-width:1000px)").matches) {
      function updatePosition() {
        let rect = homepage.getBoundingClientRect();
        var top = rect.top;
        console.log(top);
        if(top <= 0){
          navigation.classList.add("seen");
          navigation.classList.add("move-down");
          upbar.classList.add("move-down-call");
          textbar.classList.add("show-call");
        } else {
          navigation.classList.remove("seen");
          navigation.classList.remove("move-down");
          upbar.classList.remove("move-down-call");
          textbar.classList.remove("show-call");
        }
      }
      window.addEventListener("scroll", updatePosition);
    }

    if (window.matchMedia("(max-width:1000px)").matches) {

      function updatePosition() {
        let rect = homepage.getBoundingClientRect();
        var top = rect.top;
        console.log(top);
        if (top <= 203) {
          if (navtel.classList.contains("show-call")){
              navtel.style.top = "96px";
              navtel.classList.add("seen");
              logo.style.marginTop = "-128px"
          console.log("now");}

        }
      }
      window.addEventListener("scroll", updatePosition);
    }
  }

  displayMenu() {
    const navtel = this.navtelTarget;

    if (navtel.classList.contains("show-call") ) {
      navtel.classList.add("fade-out");
      navtel.classList.remove("show-call");
    } else {
      navtel.classList.add("show-call");
      navtel.classList.remove("fade-out");
    }
  }
}
