import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Stop Searching. Start Finding."],
    typeSpeed: 80,
  });

  // setTimeout(function(){
  //   document.querySelector("#banner-typed-text").classList.add('strikethrough');
  //   }, 6000);
  }

export { loadDynamicBannerText };



