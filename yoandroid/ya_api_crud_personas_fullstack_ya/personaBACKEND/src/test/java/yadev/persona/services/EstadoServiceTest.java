package yadev.persona.services;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.springframework.data.domain.Sort;
import yadev.persona.entitys.Estado;
import yadev.persona.entitys.Pais;
import yadev.persona.repositorys.IEstadoRepository;
import yadev.persona.services.Impl.EstadoServiceImpl;

import java.util.Arrays;

import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.when;

class EstadoServiceTest {

    // Mapeamos el repositorio que utiliza la clase
    @Mock
    private IEstadoRepository estadoRepository;

    // Declaramos el servicio e inyectamos
    @InjectMocks
    private EstadoServiceImpl estadoService;

    // Creamos var de lista de estado que es un resultado a devolver del servicio
    // Lo hacemos por practica de poder reutilizar en los test
    private Estado estado;

    @BeforeEach
    void setUp() {
        // 1ero inicializar mockito
        MockitoAnnotations.initMocks(this);

        // Vamos a definir el estado y setiar los valores
        // que seran cargado a la lista de objetos para validar
        estado = new Estado();
        estado.setPais(new Pais());
        estado.setNombre("Polombia");
        estado.setId(1L);

    }

    @Test
    void findAll() {
        // mockeamos
        // probar el funcionamiento del metodo
        // Retornar una lista con objetos tipo estado
        when(estadoRepository.findAll()).thenReturn(Arrays.asList(estado));
        // revisando que el metodo no este devolviendo valores null
        assertNotNull(estadoService.findAll());
    }

    @Test
    void findAllSort() {
        // cada vez que en ese repositorio invoquemos los parametros de sort, va retornar una lista de estados
        when(estadoRepository.findAll(any(Sort.class))).thenReturn(Arrays.asList(estado));
        assertNotNull(estadoService.findAll(Sort.by(Sort.Direction.ASC, "ID")));
    }
}