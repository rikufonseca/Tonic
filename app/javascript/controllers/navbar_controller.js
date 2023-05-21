import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["navigation", "pageup", "upbar", "textbar", "navtel", "logo", "menuLink"];

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
          console.log(top)
          if(top <= 108){
            console.log("start here")
            console.log("in here")
            navigation[0].classList.add("seen");
            navigation[0].classList.add("move-down");
            upbar[0].classList.add("move-down-call");
            textbar[0].classList.add("show-call");
          } else {
            console.log("in there")
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

      function updatePositionWithMenuOpen(event) {
        event.preventDefault();
        const rects = []
        pageup.forEach((page) => {
          const rect = page.getBoundingClientRect();
          rects.push(rect)
        });
        rects.forEach((rect) => {
          const top = rect.top;
          console.log(top);
          if (top <= 203 && navtel.style.opacity === "1"){
            console.log("in-one");
            navtel.classList.remove("display-menu");
            navtel.style.top = "-33px";
            upbar[1].classList.remove("move-down-call");
            navtel.style.backgroundColor = "rgba(222, 208, 199, 1)";
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
          } else {
              if(navtel.style.opacity === "1"){
                console.log("in-three");
                navtel.classList.remove("display-menu");
                navtel.style.backgroundColor = "rgba(222, 208, 199,0)"
                upbar[1].classList.remove("move-down-call");
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
      window.addEventListener("scroll", updatePositionWithMenuOpen);
    }
  }

  displayMenu(event) {
  //  console.log("in")
    event.preventDefault();
    const links = this.element.querySelectorAll('a');
    const navtel = this.navtelTarget;
    const navigation = this.navigationTargets;
    const pageup = this.pageupTargets;
    const upbar = this.upbarTargets;
    const textbar = this.textbarTargets;
    const menuLinks = this.menuLinkTargets;
    // console.log(upbar)
    const rects = []

    // if (window.location.pathname === "/en/services" || window.location.pathname === "/gr/services") {
    //   navtel.classList.add("seen_tel");
    //   upbar[1].classList.add("move-down-call");
    //   navtel.style.opacity = "1";
    //   navtel.style.top = '25px';
    //   navtel.style.transition = "opacity 1s linear, top 1s linear";
    //   navtel.classList.remove("display-menu");
    //   textbar[1].classList.add("show-call");
    // }

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

      if ((topNav === 0) && (top >= 267)) {
      //  console.log("112px")
        if (window.location.pathname === "/en/contacts" || window.location.pathname === "/gr/contacts" ) {
          navtel.style.backgroundColor = "rgba(244, 244, 244,1)";
        } else {
          navtel.style.backgroundColor = "rgba(222, 208, 199,0)";
        }
        if(navtel.classList.contains("opacity")){
      //    console.log("in-one")
          navtel.classList.remove("display-menu");
          navtel.style.opacity = "1";
          navtel.style.top = '112px';
          navtel.style.transition = "opacity 1s linear, top 1s linear";
          navtel.classList.remove("opacity");
          links.forEach(link => { link.style.pointerEvents = "auto" })
        } else {
      //    console.log("in-two")
          navtel.classList.remove("display-menu");
          navtel.style.opacity = "0";
          navtel.style.top = '0px';
          navtel.style.transition = "opacity 1s linear, top 1s linear";
          navtel.classList.add("opacity");
          links.forEach(link => { link.style.pointerEvents = "none" })
        }
      } else {
    //    console.log("137px")
        navtel.style.backgroundColor = "#ded0c7"
        if (navtel.classList.contains("show-call")) {
      //    console.log("in-three")
          navtel.classList.remove("display-menu");
          navtel.style.top = '-15px';
          navtel.classList.add("seen_tel");
          navtel.style.opacity = "0";
          navtel.style.transition = "opacity 1s linear, top 1s linear";
          navtel.classList.add("opacity");
          links.forEach(link => { link.style.pointerEvents = "none" })
        } else {
      //    console.log("in-four")
          navtel.classList.remove("display-menu");
          navtel.style.top = '137px';
          navtel.style.opacity = "1";
          navtel.style.transition = "opacity 1s linear, top 1s linear";
          navtel.classList.remove("opacity");
          links.forEach(link => { link.style.pointerEvents = "auto" })

        }
      }
    })
  }
}
