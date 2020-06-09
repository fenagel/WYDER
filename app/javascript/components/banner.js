import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Your Search is over."],
    typeSpeed: 100,
  });
}

export { loadDynamicBannerText };
