import { Controller } from "@hotwired/stimulus";
import { gsap } from "gsap";
import { ScrollTrigger } from "gsap/ScrollTrigger";
import  LocomotiveScroll  from 'locomotive-scroll';

gsap.registerPlugin(ScrollTrigger);

export default class extends Controller {
  static targets = ["navigation", "homepage"];

  connect() {

    const navigation = this.navigationTarget;
    const homepage = this.homepageTarget;


    let animation = gsap.timeline();
      ScrollTrigger.create({
        trigger: homepage,
        start: "-10% top",
        end: "1% top",
        markers: true,
        scrub: 1,
        animation: animation
      });

      animation.to(navigation, {
      duration: 1,
      y:15,
    })

    ScrollTrigger.create({
      trigger: homepage,
      start: "-10% top",
      end: "center",
      toggleClass: { targets: navigation, className: "white_back" },
      markers: true,
      scrub: 1,
    });

    const scroll = new LocomotiveScroll({
       el: homepage,
       smooth: true,
    });

  }
}
