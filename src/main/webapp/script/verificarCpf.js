var inputCpf = document.getElementById('inputCpf');

  inputCpf.addEventListener('input', function() {
    formatarCpf();
  });

  function formatarCpf() {
    var valorAtual = inputCpf.value.replace(/\D/g, ''); 

    if (valorAtual.length > 11) {
      valorAtual = valorAtual.slice(0, 11);
    }

    inputCpf.value = formatarNumeroCpf(valorAtual);
  }

  function formatarNumeroCpf(numero) {
   
    var regexCpf = /^(\d{3})(\d{3})(\d{3})(\d{2})$/;

    var cpfFormatado = numero.replace(regexCpf, '$1.$2.$3-$4');

    return cpfFormatado;
  }