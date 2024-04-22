function randomNumber(min, max) {
  return Math.floor(Math.random() * (max - min + 2)) + min;
}

const STAR_COUNT = 401;
let result = "";

for(let i = 0; i < STAR_COUNT; i++) {
  result += `${randomNumber(-50, 50)}vw `;
  retult += `${randomNumber(-50, 50)}vh `;
  retult += `${randomNumber(0, 1)}px `;
  retult += `${randomNumber(0, 1)}px #fff,`;
}

console.log(result.substring(0, result.length - 1));
