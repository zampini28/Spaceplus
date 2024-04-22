function create() {
  window.location.href = "/spaceplus/create";
}

function remove() {
  window.location.href = window.location.href.replace("view", "remove");
}

function update() {
  window.location.href = window.location.href.replace("view", "update");
}
