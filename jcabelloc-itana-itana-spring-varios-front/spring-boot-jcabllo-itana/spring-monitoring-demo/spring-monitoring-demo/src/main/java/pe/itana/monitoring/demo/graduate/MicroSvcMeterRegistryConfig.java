package pe.itana.monitoring.demo.graduate;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.actuate.autoconfigure.metrics.MeterRegistryCustomizer;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import io.micrometer.prometheus.PrometheusMeterRegistry;

@Configuration
public class MicroSvcMeterRegistryConfig {
	
  @Value("${spring.application.name}")
  String appName;


  @Bean
  MeterRegistryCustomizer<PrometheusMeterRegistry> configureMetricsRegistry()
  {
    return registry -> registry.config().commonTags("application", appName);
  }

}
