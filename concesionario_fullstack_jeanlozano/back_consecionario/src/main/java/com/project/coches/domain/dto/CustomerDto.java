package com.project.coches.domain.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 * Dto de un cliente
 */
@Getter @Setter
@ToString
public class CustomerDto {

    private String cardId;

    private String fullName;

    private String email;

    private Double numberCellphone;

    private Integer active;

    private String password;
}
