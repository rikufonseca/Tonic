// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import "bootstrap"

import { navbar } from './navbar';

document.addEventListener('turbolinks:load', () => {
  navbar();
});
