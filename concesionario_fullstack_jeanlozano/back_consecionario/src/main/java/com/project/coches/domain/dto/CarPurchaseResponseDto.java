package com.project.coches.domain.dto;

import lombok.Getter;
import lombok.Setter;

/**
 * Dto de la consulta de los carros de una compra
 */
@Getter @Setter
public class CarPurchaseResponseDto {

    private String referenceCar;

    private Integer quantity;

    private Integer total;

}
