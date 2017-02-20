package org.demo;


import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.Mock;
import static org.mockito.Mockito.when;
import org.springframework.test.annotation.DirtiesContext;
import org.mockito.runners.MockitoJUnitRunner;

@RunWith(MockitoJUnitRunner.class)
@DirtiesContext
public class EurekaClientTest {

    @Mock
    private EurekaClient discoveryClient;

    @Test
    public void contextLoads() throws Exception {
        when(discoveryClient.index())
                .thenReturn("Hello Eureka");
    }

}