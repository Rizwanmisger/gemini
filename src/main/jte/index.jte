@param org.springframework.security.oauth2.core.user.OAuth2User principal

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Gemini Templates</title>
    <link rel="stylesheet" href="https://unpkg.com/@picocss/pico@latest/css/pico.min.css">
</head>
<body>
<main class="container">
    <nav>
        <ul>
            <li><strong>Gemini Templates</strong></li>
        </ul>
        <ul>
            @if(principal != null)
                <li><a href="/logout">Logout</a></li>
            @endif
        </ul>
    </nav>
    <h1>Welcome to Gemini Templates</h1>
    @if(principal != null)
        <h2>Hello, ${principal.getAttribute("name")}</h2>
    @endif
    <div class="grid">
        @for(int i = 0; i < 12; i++)
            <article>
                <header>Template ${i + 1}</header>
                <p>A short description of the template.</p>
                <footer>
                    <a href="#" role="button">Download</a>
                </footer>
            </article>
        @endfor
    </div>
</main>
</body>
</html>
