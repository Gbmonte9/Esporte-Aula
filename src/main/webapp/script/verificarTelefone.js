document.getElementById('inputTelefone').addEventListener('input', formatarEValidarTelefone);

  function formatarEValidarTelefone() {
    var inputTelefone = document.getElementById('inputTelefone');
    var valorAtual = inputTelefone.value.replace(/\D/g, ''); 

    if (valorAtual.length > 11) {
      valorAtual = valorAtual.slice(0, 11);
    }

    inputTelefone.value = formatarNumeroTelefone(valorAtual);
  }

  function formatarNumeroTelefone(numero) {
	  
    var regexTelefone = /^(\d{2})(\d{5})(\d{4})$/;

    var numeroFormatado = numero.replace(regexTelefone, '($1) $2-$3');

    return numeroFormatado;
  }