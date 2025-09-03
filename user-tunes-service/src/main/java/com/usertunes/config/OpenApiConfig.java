package com.usertunes.config;

import io.swagger.v3.oas.models.ExternalDocumentation;
import io.swagger.v3.oas.models.OpenAPI;
import io.swagger.v3.oas.models.info.Contact;
import io.swagger.v3.oas.models.info.Info;
import org.springdoc.core.models.GroupedOpenApi;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class OpenApiConfig {

    @Bean
    public OpenAPI userTunesOpenAPI() {
        return new OpenAPI().info(
                new Info()
                        .title("User Tunes Service API")
                        .description("APIs to manage user caller tunes, clip windows, and history.")
                        .version("v1")
                        .contact(new Contact().name("CTMS Team").email("team@example.com"))
        ).externalDocs(new ExternalDocumentation()
                .description("Docs")
                .url("https://example.com/docs"));
    }

    @Bean
    public GroupedOpenApi userTunesGroup() {
        return GroupedOpenApi.builder()
                .group("user-tunes")
                .pathsToMatch("/api/**")
                .build();
    }
}
