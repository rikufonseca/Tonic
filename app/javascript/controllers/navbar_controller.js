import { Controller } from "@hotwired/stimulus";
import { gsap } from "gsap";

export default class extends Controller {
  static targets = ["navigation"];

  connect() {
    const navigation = this.navigationTarget;
    gsap.to(navigation, { duration: 1, y: 500, opacity: 1 });
  }
}
