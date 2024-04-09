import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["lineup"];

  displayFiltres() {
    const lineup = this.lineupTarget;
    lineup.classList.toggle("display-filtres");
  }

}
