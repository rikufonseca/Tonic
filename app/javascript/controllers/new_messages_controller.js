import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["categories"];

  connect(){
    categories = this.categoriesTargets;

    console.log(categories);
  }

  select(){
    categories = this.categoriesTargets;

    console.log(categories);
  }
}
