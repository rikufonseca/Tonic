import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["line"];

  displayFiltres() {
    const line = this.lineTarget;

    console.log(line);
  }

}
