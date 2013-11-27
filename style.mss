Map {
}

/* Color de límites */
  @border: #848484;

/* Asignar colores para cada categoría */
  @ana1:rgb(253, 212, 158);
  @ana2:rgb(253, 187, 132);
  @ana3:rgb(252, 141, 89);
  @ana4:rgb(227, 74, 51);
  @ana5:rgb(207, 47, 21);

/* Asignar color para municipios sin información */
  @noinfo: #fff;

/* Colores de cada municipio según la tasa de analfabetismo */
#analfabetismo{
  [Valor = 0]{polygon-fill:@noinfo;}
  [Valor > 0][Valor <= 10]{polygon-fill:@ana1;}
  [Valor > 10][Valor <= 15]{polygon-fill:@ana2;}
  [Valor > 15][Valor <= 20]{polygon-fill:@ana3;}
  [Valor > 20][Valor <= 30]{polygon-fill:@ana4;}
  [Valor > 30]{polygon-fill:@ana5;}
    }

/* Límites de los departamento */
#depts {
  ::outline {
    [zoom>0] {
      line-width:0.5;
      line-opacity: 0.5;
      line-color:@border;
      line-join:round;
      }
    [zoom>5] {
      line-width:1;
      }
    [zoom=7]{
      line-width:1.5;
      }
    [zoom>7] {
      line-width:2;
      }
    }
  }

/* Municipio boundaries */
#municipios {
    [zoom>0] {
      line-width:0.1;
      line-color:@border;
      line-join:round;
      line-dasharray:4,2;
      }
    [zoom>6] {
      line-width:0.5;
      }
    [zoom>9] {
      line-width:1;
      }
  }