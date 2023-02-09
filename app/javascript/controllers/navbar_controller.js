import { Controller } from "@hotwired/stimulus";
import { gsap } from "gsap";
import { ScrollTrigger } from "gsap/ScrollTrigger";

gsap.registerPlugin(ScrollTrigger);

export default class extends Controller {
  static targets = ["navigation", "homepage"];

  connect() {

    const navigation = this.navigationTarget;
    const homepage = this.homepageTarget;

    let animation = gsap.timeline();
      ScrollTrigger.create({
        trigger: homepage,
        start: "top",
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
      start: "1% top",
      end: "bottom",
      toggleClass: { targets: navigation, className: "white_back" },
      markers: true,
      scrub: 1,
    });
  }
}
