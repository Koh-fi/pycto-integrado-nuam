function swap(){
  var ingreso_por_montos = document.getElementById("ingreso_montos");
  if (ingreso_por_montos) {
    var calcular = document.getElementById("submit");
    calcular.innerHTML = '<button type="submit" id="calcular" name="calcular" class="btn btn-primary px-4">CALCULAR</button>'
  }
  else {
    var calcular = document.getElementById("calcular");
    calcular.innerHTML = '<button type="submit" id="submit" name="ingresar" class="btn btn-primary px-4">INGRESAR</button>'
  }
}