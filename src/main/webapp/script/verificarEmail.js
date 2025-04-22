var inputEmail = document.getElementById('inputEmail');

  inputEmail.addEventListener('input', function() {
    validarEmail();
  });

  function validarEmail() {
    var valorAtual = inputEmail.value;
    var regexEmail = /^[^\s@]+@[^\s@]+\.[^\s@]+/;
    
    if (!regexEmail.test(valorAtual)) {
      inputEmail.setCustomValidity('Formato de e-mail inválido');
    } else {
      inputEmail.setCustomValidity('');
    }
  }