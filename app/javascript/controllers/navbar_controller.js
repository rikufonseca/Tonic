import { Controller } from "@hotwired/stimulus";
import  LocomotiveScroll  from 'locomotive-scroll';

export default class extends Controller {
  static targets = ["navigation", "homepage", "upbar", "textbar", "navtel"];

  connect() {

    const navigation = this.navigationTarget;
    const homepage = this.homepageTarget;
    const upbar = this.upbarTarget;
    const textbar = this.textbarTarget;

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

  //  new LocomotiveScroll({
  //     el: homepage,
  //     smooth: true,
  //  });

  }

  displayMenu() {
    const navtel = this.navtelTarget;
    const homepage = this.homepageTarget;


    if (navtel.classList.contains("show-call") ) {
      navtel.classList.add("fade-out");
      navtel.classList.remove("show-call");
    } else {
      navtel.classList.add("show-call");
      navtel.classList.remove("fade-out");
    }

  }
}
