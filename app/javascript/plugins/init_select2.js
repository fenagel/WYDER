import $ from 'jquery';
import 'select2';

const initSelect2 = () => {
  $('.js-example-placeholder-multiple').select2({
    width: "100%",
    placeholder: "Select a state",
    allowClear: true
  }); // (~ document.querySelectorAll)
};

export { initSelect2 };
