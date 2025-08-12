# Gemini Templates

This project was built with the help of Google's Gemini AI.

This is a demo project for Spring Boot with Gemini. It showcases a simple web application that displays a list of templates and uses Spring Security with OAuth2 for authentication.

## Getting Started

To get started with this project, you will need to have Java 17 and Maven installed.

1. Clone the repository:

```bash
git clone https://github.com/your-username/gemini.git
```

2. Navigate to the project directory:

```bash
cd gemini
```

3. Run the application:

```bash
./mvnw spring-boot:run
```

The application will be available at http://localhost:8080.

## Configuration

This project uses OAuth2 for authentication with Google and GitHub. You will need to create your own OAuth2 credentials and add them to the `src/main/resources/application.properties` file.

### Google

1. Go to the [Google API Console](https://console.developers.google.com/).
2. Create a new project.
3. Go to **Credentials** and create a new **OAuth client ID**.
4. Select **Web application** as the application type.
5. Add `http://localhost:8080/login/oauth2/code/google` as an authorized redirect URI.
6. Copy the client ID and client secret and add them to the `application.properties` file:

```properties
spring.security.oauth2.client.registration.google.client-id=YOUR_GOOGLE_CLIENT_ID
spring.security.oauth2.client.registration.google.client-secret=YOUR_GOOGLE_CLIENT_SECRET
```

### GitHub

1. Go to your [GitHub developer settings](https://github.com/settings/developers).
2. Create a new **OAuth App**.
3. Set the **Homepage URL** to `http://localhost:8080`.
4. Set the **Authorization callback URL** to `http://localhost:8080/login/oauth2/code/github`.
5. Generate a new client secret.
6. Copy the client ID and client secret and add them to the `application.properties` file:

```properties
spring.security.oauth2.client.registration.github.client-id=YOUR_GITHUB_CLIENT_ID
spring.security.oauth2.client.registration.github.client-secret=YOUR_GITHUB_CLIENT_SECRET
```

## Running the Application

Once you have configured the OAuth2 credentials, you can run the application using the following command:

```bash
./mvnw spring-boot:run
```

You will be redirected to a login page where you can authenticate using your Google or GitHub account. Once authenticated, you will be able to see the home page with the template showcases.
