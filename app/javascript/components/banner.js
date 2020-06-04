import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Stop Searching.........", "Start Finding."],
    typeSpeed: 85,
  });
}

export { loadDynamicBannerText };
