import $ from 'jquery';
import chosen from 'chosen-js';
// import 'chosen-js/chosen.min.css';

const initChosenjs = () => {
  $('.chosen-select').chosen().change((e) => {
    // hack to listen change events on chosen-js inputs with stimulus (grmnlrt)
  })
};

export { initChosenjs };
