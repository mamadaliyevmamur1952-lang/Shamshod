<!DOCTYPE html>
<html lang="uz">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Zamonaviy XEP Sayt</title>
    <link rel="stylesheet" href="style.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">
</head>
<body>

<header>
    <div class="logo">XEP</div>
    <nav>
        <ul>
            <li><a href="#home">Bosh sahifa</a></li>
            <li><a href="#about">Biz haqimizda</a></li>
            <li><a href="#services">Xizmatlar</a></li>
            <li><a href="#contact">Aloqa</a></li>
        </ul>
    </nav>
</header>

<section id="home" class="hero">
    <h1>Zamonaviy Web Sayt</h1>
    <p>Tez, chiroyli va responsiv dizayn</p>
    <a href="#contact" class="btn">Bog‘lanish</a>
</section>

<section id="about" class="section">
    <h2>Biz haqimizda</h2>
    <p>Biz zamonaviy web saytlar yaratamiz va mijozlarga sifatli xizmat ko‘rsatamiz.</p>
</section>

<section id="services" class="section services">
    <h2>Xizmatlar</h2>
    <div class="cards">
        <div class="card">
            <h3>Web Dizayn</h3>
            <p>Zamonaviy va kreativ dizayn.</p>
        </div>
        <div class="card">
            <h3>Frontend</h3>
            <p>HTML, CSS, JavaScript asosida.</p>
        </div>
        <div class="card">
            <h3>SEO</h3>
            <p>Google optimizatsiya xizmatlari.</p>
        </div>
    </div>
</section>

<section id="contact" class="section">
    <h2>Aloqa</h2>
    <form>
        <input type="text" placeholder="Ismingiz" required>
        <input type="email" placeholder="Email" required>
        <textarea placeholder="Xabaringiz"></textarea>
        <button type="submit">Yuborish</button>
    </form>
</section>

<footer>
    <p>© 2026 XEP. Barcha huquqlar himoyalangan.</p>
</footer>

</body>
</html>
