import { gsap } from "gsap";
import { ScrollTrigger } from "gsap/ScrollTrigger";

gsap.registerPlugin(ScrollTrigger);

export function navbar() {

  console.log("ok");

  gsap.to(".title", { ScrollTrigger: {
    trigger: ".title",
    start: "20px 80%",
    marker: true,
    toggleAction: "restart pause",
  },
  x: 400,
  duration: 3,
  rotation: 180,
  })
}
