import { Controller } from "@hotwired/stimulus";
import { gsap } from "gsap";
import { ScrollTrigger } from "gsap/ScrollTrigger";
import  LocomotiveScroll  from 'locomotive-scroll';

gsap.registerPlugin(ScrollTrigger);

export default class extends Controller {
  static targets = ["navigation", "homepage", "upbar"];

  connect() {

    const navigation = this.navigationTarget;
    const homepage = this.homepageTarget;
    const upbar = this.upbarTarget;


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

    let upto = gsap.timeline();

    ScrollTrigger.create({
      trigger: homepage,
      start: "-20% top",
      end: "center",
      toggleClass: { targets: upbar, className: "white_up" },
      markers: true,
      scrub: 1,
      animation: upto,
    });

    upto.fromTo(upbar, { attr: { y2: 60 }, duration: 0.3, ease: "linear" }, { attr: { y1: 300 }, duration: 0.30, ease: "linear" }, "<")

    const scroll = new LocomotiveScroll({
       el: homepage,
       smooth: true,
    });

  }
}
