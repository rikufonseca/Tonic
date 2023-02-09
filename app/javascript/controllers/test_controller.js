import { Controller } from "@hotwired/stimulus"
import { gsap } from "gsap";
import { ScrollTrigger } from "gsap/ScrollTrigger";

gsap.registerPlugin(ScrollTrigger);

// Connects to data-controller="test"
export default class extends Controller {
  connect() {
    gsap.to(".about_text", {
      scrollTrigger: ".about_text", // start the animation when ".box" enters the viewport (once)
      x: 500
    });
  }
}
