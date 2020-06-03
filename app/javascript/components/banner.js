import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Stop Searching.", "Start Finding."],
    typeSpeed: 70,
  });
}

export { loadDynamicBannerText };
