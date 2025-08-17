# Demo Spring Boot Security + Liquibase (Java 21)

- Build: `mvn -q -DskipTests package`
- Run: `mvn spring-boot:run`
- Public endpoint: `GET http://localhost:8080/public/hello`
- Secured endpoint: `GET http://localhost:8080/api/hello` with HTTP Basic
  - user/password
  - admin/admin
- H2 console: `http://localhost:8080/h2-console` (JDBC URL: `jdbc:h2:mem:testdb`)

Liquibase manages `users` and `authorities` tables compatible with Spring Security's `JdbcUserDetailsManager`.

