document.addEventListener('DOMContentLoaded', () => {
  const ingresoChk = document.getElementById("ingreso_montos");
  if (ingresoChk) {
    ingresoChk.addEventListener('change', swap);
    swap();
  }
});

function swap(){
  const ingreso_por_montos = document.getElementById("ingreso_montos");
  const form_btn = document.getElementById("form-btn");
  const inputs = document.querySelectorAll("input[name^='factor']");

  if (ingreso_por_montos.checked) {
    form_btn.innerText = 'CALCULAR';
    form_btn.name = "calcular";

    inputs.forEach(input => {
      input.step = "1";
      input.min = "0";
      input.max = "";
    })
  }
  else {
    form_btn.innerText = 'INGRESAR';
    form_btn.name = "ingresar";

    inputs.forEach(input => {
      input.step = "0.00000001";
      input.min = "0";
      input.max = "1";
    })
  }
}