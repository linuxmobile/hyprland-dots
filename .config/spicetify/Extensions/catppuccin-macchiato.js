// Color map
let colorPalette = {
  rosewater: "#f4dbd6",
  flamingo: "#f0c6c6",
  pink: "#f5bde6",
  maroon: "#ee99a0",
  red: "#ed8796",
  peach: "#f5a97f",
  yellow: "#eed49f",
  green: "#a6da95",
  teal: "#8bd5ca",
  blue: "#8aadf4",
  sky: "#91d7e3",
  mauve: "#c6a0f6",
  lavender: "#b7bdf8",
  white: "#d9e0ee"
}

// waitForElement borrowed from:
// https://github.com/morpheusthewhite/spicetify-themes/blob/master/Dribbblish/dribbblish.js
function waitForElement(els, func, timeout = 100) {
  const queries = els.map(el => document.querySelector(el));
  if (queries.every(a => a)) {
    func(queries);
  } else if (timeout > 0) {
    setTimeout(waitForElement, 300, els, func, --timeout);
  }
}

// Return the color label for a given hex color value
function getKeyByValue(object, value) {
  return Object.keys(object).find(key => object[key] === value.trim());
}

// Used to select matching equalizer-animated-COLOR.gif
waitForElement([".Root"], (root) => {
  let spiceEq = getComputedStyle(document.querySelector(":root")).getPropertyValue("--spice-equalizer");
  let eqColor = getKeyByValue(colorPalette, spiceEq);
  root[0].classList.add(`catppuccin-eq-${eqColor}`);
});
