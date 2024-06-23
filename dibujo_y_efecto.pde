void dibujarCircle() {
  for (int i = 15; i <= height; i += espacioCircle) {
    for (int j = 401; j <= width; j += espacioCircle) {
      float distancia = dist(mouseX, mouseY, j, i);
      float transparenciaRojo = calcularTransparenciaRojo(distancia);
      float transparenciaAzul = calcularTransparenciaAzul(distancia);

      fill(0, 6, 255, transparenciaAzul);
      ellipse(j, i, diametroCircle, diametroCircle);

      if (!invertido) {
        fill(255, 0, 0, transparenciaRojo);
        ellipse(j + 2, i + 2, diametroCircle, diametroCircle);
      }
    }
  }
}
float calcularTransparenciaRojo(float distancia) {
  return map(distancia, 0, width / 2.8, 255, 0);
}

float calcularTransparenciaAzul(float distancia) {
  return map(distancia, 0, width / 2.8, 0, 255);
}
