// Color map
let colorPalette = {
    rosewater: "#dc8a78",
    flamingo: "#dd7878",
    pink: "#ea76cb",
    maroon: "#e64553",
    red: "#d20f39",
    peach: "#fe640b",
    yellow: "#df8e1d",
    green: "#40a02b",
    teal: "#179299",
    blue: "#1e66f5",
    sky: "#04a5e5",
    mauve: "#8839ef",
    lavender: "#7287fd",
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
