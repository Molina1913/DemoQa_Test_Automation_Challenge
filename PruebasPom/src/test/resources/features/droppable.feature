Feature: Cajas droppables
  Yo como usuario de la aplicacion demoqa
  Quiero arrastrar una caja dentro de otra
  Para obtener la confirmacion "Dropped"


  Background:
    Given que el usuario esta en la pagina de inicio

  @CasoDropped
  Scenario: Ubicacion correcta
    When ingresa hasta la interaccion Droppable
    And arrastra la caja a la ubicacion indicada
    Then deberia observar un mensaje de dropped

  Scenario: Drag Aceptable
    When ingresa hasta la interaccion Droppable
    And arrastra la caja con el texto Acceptable
    Then deberia observar un mensaje de dropped!

  @PreventPropogation
  Scenario: Prevent propogation
    When ingresa hasta la pagina de droppable al apartado prevent propogation
    And arrastra la caja Drag me hasta inner droppable
    Then debería aparecer un mensaje "Dropped!"