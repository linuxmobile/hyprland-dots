// Color map
let colorPalette = {
  rosewater: "#f5e0dc",
  flamingo: "#f2cdcd",
  pink: "#f5c2e7",
  maroon: "#eba0ac",
  red: "#f38ba8",
  peach: "#fab387",
  yellow: "#f9e2af",
  green: "#a6e3a1",
  teal: "#94e2d5",
  blue: "#89b4fa",
  sky: "#89dceb",
  mauve: "#cba6f7",
  lavender: "#b4befe",
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
