@param org.springframework.security.oauth2.core.user.OAuth2User principal
@param java.util.List<dev.rezwan.gemini.models.Template> templates

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Gemini Templates</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100">
<main class="container mx-auto px-4">
    <header class="flex justify-between items-center py-8">
        <h1 class="text-4xl font-bold">Gemini Templates</h1>
        @if(principal != null)
            <div class="flex items-center">
                <p class="mr-4">Hello, ${principal.getAttribute("name")}</p>
                <a href="/logout" class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded">Logout</a>
            </div>
        @endif
    </header>
    <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
        @for(dev.rezwan.gemini.models.Template template : templates)
            <div class="bg-white rounded-lg shadow-lg">
                <img src="${template.getImageUrl()}" alt="${template.getTitle()}" class="rounded-t-lg">
                <div class="p-6">
                    <h2 class="text-2xl font-bold mb-2">${template.getTitle()}</h2>
                    <p class="text-gray-700 mb-4">${template.getDescription()}</p>
                    <a href="#" class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded">Download</a>
                </div>
            </div>
        @endfor
    </div>
</main>
</body>
</html>
