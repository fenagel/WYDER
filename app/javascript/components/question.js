import Typed from 'typed.js';

const loadDynamicBannerQuestion = () => {
  new Typed('#banner-typed-question', {
    strings: ["Good Question!"],
    typeSpeed: 85,
  });
}

export { loadDynamicBannerQuestion };

