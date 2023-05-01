import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["categories"];

  connect(){
    this.categories = this.categoriesTargets;

  }

  select(){
    this.categories = this.categoriesTargets;

  }
}
