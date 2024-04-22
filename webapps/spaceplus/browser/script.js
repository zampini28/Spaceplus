let imgElement = document.querySelectorAll('img');

imgElement.forEach(function(img) {
  img.addEventListener('click', (event) => {
    let id = event.srcElement.dataset.indexNumber;
    window.location.href = 'spaceplus/view?id=' + id;
  });
});

let buttonElemtent = document.getElementById("commit");
let searchElement = document.getElementById("search");
let selectElement = document.getElementById("selector");

buttonElemtent.addEventListener('click', () => {
  let searchValue = searchElement.value;
  let modeValue = selectElement.value;
  let url = window.location.href.split('?')[0] +
    `?search=${searchValue}&mode=${modeValue}`;
  window.location.href = url;
})

function create() {
  window.location.href = "/spaceplus/create";
}
