import $ from 'jquery';
import 'select2';

const initSelect2 = () => {
  $('.js-example-basic-multiple').select2(); // (~ document.querySelectorAll)
};

export { initSelect2 };
