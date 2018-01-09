$(document).ready(
  function() {
    $('#palindrome_input').focus(function(e) {
      e.preventDefault();
      let dotCollection = $('.dot');
      let resultDiv = $('.result');
      let submitBtn = $('.submit');
      let inputFld = $('#palin_input');

      inputFld.context.activeElement.removeAttribute('value');
      inputFld.context.activeElement.setAttribute('placeholder', 'Check palindrominity...');

      submitBtn.removeClass('hidden');

      resultDiv.addClass('hidden');

      dotCollection.each(function(dot) {
        dotCollection[dot].classList.add('hidden');
      });

    });
  }
);
