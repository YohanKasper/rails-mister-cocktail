// Load all the channels within this directory and all subdirectories.
// Channel files must be named *_channel.js.

const channels = require.context('.', true, /_channel\.js$/)
channels.keys().forEach(channels)

import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Jackgrouille trouve qu'il fait grand soif ici"],
    typeSpeed: 70,
    loop: true
  });
}

export { loadDynamicBannerText };
