//= require jquery
//= require jquery_ujs
//= require bootstrap_backend.js
//= require tinymce

$(function() {
  $("#movie_director_tokens").tokenInput("/get_directors.json", {
    crossDomain: false,
    prePopulate: $("#movie_director_tokens").data("pre"),
    theme: "facebook"
  });
  $("#movie_actor_tokens").tokenInput("/get_actors.json", {
    crossDomain: false,
    prePopulate: $("#movie_actor_tokens").data("pre"),
    theme: "facebook"
  });
  $("#movie_category_tokens").tokenInput("/get_categories.json", {
    crossDomain: false,
    prePopulate: $("#movie_category_tokens").data("pre"),
    theme: "facebook"
  });
  $("#movie_server_tokens").tokenInput("/get_servers.json", {
    crossDomain: false,
    prePopulate: $("#movie_server_tokens").data("pre"),
    theme: "facebook"
  });
});