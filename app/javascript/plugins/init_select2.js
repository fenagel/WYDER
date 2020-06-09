import $ from 'jquery';
import 'select2';

const initSelect2 = () => {
  $('.js-example-placeholder-multiple').select2({
    dropdownAutoWidth: true,
    multiple: true,
    width: '100%',
    height: '30px',
    placeholder: "Select",
    allowClear: true
  });
};

export { initSelect2 };
