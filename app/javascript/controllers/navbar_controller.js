import { Controller } from "@hotwired/stimulus";
import { gsap } from "gsap";
import { ScrollTrigger } from "gsap/ScrollTrigger";

gsap.registerPlugin(ScrollTrigger);

export default class extends Controller {
  static targets = ["navigation", "homepage"];

  connect() {

    const navigation = this.navigationTarget;
    const homepage = this.homepageTarget;

    let animation = gsap.timeline({
      scrollTrigger: {
        trigger: homepage,
        start: "10% top",
        end: "top",
        markers: true,
        scrub: 1,
      }
    });

    animation.to(navigation, {
      duration: 1,
      y:10,
    })
//
    //ScrollTrigger.create({
    //  trigger: homepage,
    //  start: "top top",
    //  markers: { startColor: "black", endColor: "black" },
    //  scrub: 1,
    //  animation: animation
    //  })

  // gsap.to(navigation, { duration: 1, y: 500, opacity: 1 });
  // gsap.to(homepage, { duration: 1, y: 500, opacity: 1 });
  }
}
