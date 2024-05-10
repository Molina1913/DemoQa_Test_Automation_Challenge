Feature: prueba de los Widgets
  yo como usuario de la página dmoqa
  quiero poder utilizar los widgets
  para disfrutar todos sus beneficios


  Background:
    Given El usuario esta en la pagina web de widgets demoqa 1

  Scenario: prueba de Accordian
    Given el usuario se dirige a la página widget Accordian
    When quiere utilizar el Accordian
    Then deberia moverse automaticamente

  Scenario: prueba de Auto complete
    Given el usuario se dirige a la página widget Auto complete
    When quiere utilizar el auto complete
    Then deberia completarse automaticamente

  @Fechas
  Scenario Outline: Seleccionar fecha
    Given El usuario accede a los widgets de fecha y hora
    When selecciona la fecha: "<fecha>"
    Then debería ver el campo de fecha llenado con "<textoFecha>"
    Examples:
      | fecha      | textoFecha |
      | 1985-07-15 | 07/15/1985 |
      | 2075-03-10 | 03/10/2075 |
      | 2099-12-31 | 12/31/2099 |

  @FechaHora
  Scenario Outline: Seleccionar fecha y hora
    Given El usuario accede a los widgets de fecha y hora
    When selecciona la fecha y hora: "<fechaHora>"
    Then debería ver el campo de fechaHora llenado con "<textoFechaHora>"
    Examples:
      | fechaHora        | textoFechaHora             |
      | 2024-04-30T12:30 | April 30, 2024 12:30 PM    |
      | 2035-09-15T15:45 | September 15, 2035 3:45 PM |
      | 2015-11-20T09:00 | November 20, 2015 9:00 AM  |

