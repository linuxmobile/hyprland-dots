// Color map
let colorPalette = {
    rosewater: "#f2d5cf",
    flamingo: "#eebebe",
    pink: "#f4b8e4",
    maroon: "#ea999c",
    red: "#e78284",
    peach: "#ef9f76",
    yellow: "#e5c890",
    green: "#a6d189",
    teal: "#81c8be",
    blue: "#8caaee",
    sky: "#99dadb",
    mauve: "#ca9ee6",
    lavender: "#babbf1",
    white: "#c6d0f5",
    mauve: "#ca9ee6"
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
