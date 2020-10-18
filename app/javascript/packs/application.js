require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

import "bootstrap";
import Sortable from 'sortablejs';
import "@fortawesome/fontawesome-free/css/all.css";
import "controllers"
import "../stylesheets/application"

document.addEventListener("turbolinks:load", () => {
    $('[data-toggle="tooltip"]').tooltip()
    $('[data-toggle="popover"]').popover()
    var el = document.getElementById('tasks-list');
    var sortable = Sortable.create(el);
})
