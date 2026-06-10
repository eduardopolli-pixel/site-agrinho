<!DOCTYPE html>
<html lang="pt-BR">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Agro Forte - Futuro Sustentável</title>

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

<style>

:root{
    --verde:#2e7d32;
    --verde-claro:#66bb6a;
    --bg:#f5faf5;
    --texto:#333;
    --card:#fff;
}

.dark{
    --bg:#121212;
    --texto:#fff;
    --card:#1e1e1e;
}

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:'Poppins',sans-serif;
}

html{
    scroll-behavior:smooth;
}

body{
    background:var(--bg);
    color:var(--texto);
}

header{
    height:100vh;
    background:
    linear-gradient(rgba(0,0,0,.55),rgba(0,0,0,.55)),
    url('https://images.unsplash.com/photo-1501004318641-b39e6451bec6?q=80&w=1600');
    background-size:cover;
    background-position:center;

    display:flex;
    justify-content:center;
    align-items:center;
    text-align:center;
    color:white;
}

.hero{
    max-width:900px;
    padding:20px;
}

.hero h1{
    font-size:4rem;
    margin-bottom:20px;
}

.hero span{
    color:#7CFF6B;
}

.hero p{
    font-size:1.2rem;
    margin-bottom:30px;
}

.btn{
    display:inline-block;
    padding:15px 35px;
    background:var(--verde-claro);
    color:white;
    text-decoration:none;
    border-radius:50px;
    transition:.3s;
}

.btn:hover{
    transform:translateY(-5px);
}

nav{
    background:var(--verde);
    position:sticky;
    top:0;
    z-index:999;
}

nav ul{
    display:flex;
    justify-content:center;
    list-style:none;
    flex-wrap:wrap;
}

nav li{
    margin:15px;
}

nav a{
    color:white;
    text-decoration:none;
    font-weight:600;
}

section{
    padding:80px 10%;
}

.titulo{
    text-align:center;
    margin-bottom:50px;
}

.titulo h2{
    font-size:2.5rem;
    color:var(--verde);
}

.cards{
    display:grid;
    grid-template-columns:repeat(auto-fit,minmax(280px,1fr));
    gap:25px;
}

.card{
    background:var(--card);
    padding:30px;
    border-radius:20px;
    box-shadow:0 5px 15px rgba(0,0,0,.1);
    transition:.4s;
}

.card:hover{
    transform:translateY(-10px);
}

.card h3{
    color:var(--verde);
    margin-bottom:15px;
}

.stats{
    background:linear-gradient(to right,var(--verde),var(--verde-claro));
    color:white;
}

.stats-grid{
    display:grid;
    grid-template-columns:repeat(auto-fit,minmax(200px,1fr));
    gap:30px;
    text-align:center;
}

.stat h2{
    font-size:3rem;
}

.galeria-grid{
    display:grid;
    grid-template-columns:repeat(auto-fit,minmax(250px,1fr));
    gap:20px;
}

.galeria-grid img{
    width:100%;
    height:250px;
    object-fit:cover;
    border-radius:15px;
    transition:.4s;
}

.galeria-grid img:hover{
    transform:scale(1.05);
}

.timeline{
    border-left:4px solid var(--verde);
    padding-left:30px;
}

.evento{
    margin-bottom:30px;
}

.evento h3{
    color:var(--verde);
}

.depoimentos{
    display:grid;
    grid-template-columns:repeat(auto-fit,minmax(300px,1fr));
    gap:20px;
}

.depoimento{
    background:var(--card);
    padding:25px;
    border-radius:15px;
    box-shadow:0 4px 10px rgba(0,0,0,.1);
}

form{
    max-width:700px;
    margin:auto;
}

input,
textarea{
    width:100%;
    padding:15px;
    margin:10px 0;
    border:none;
    border-radius:10px;
    background:#ececec;
}

textarea{
    min-height:150px;
}

button{
    background:var(--verde);
    color:white;
    border:none;
    padding:15px 40px;
    border-radius:50px;
    cursor:pointer;
}

footer{
    background:#1b5e20;
    color:white;
    text-align:center;
    padding:40px;
}

.whatsapp{
    position:fixed;
    right:20px;
    bottom:20px;
    width:65px;
    height:65px;
    background:#25D366;
    border-radius:50%;
    display:flex;
    justify-content:center;
    align-items:center;
    text-decoration:none;
    color:white;
    font-size:32px;
    box-shadow:0 5px 15px rgba(0,0,0,.3);
}

.dark-btn{
    position:fixed;
    left:20px;
    bottom:20px;
    width:60px;
    height:60px;
    border-radius:50%;
    font-size:24px;
    z-index:999;
}

@media(max-width:768px){

.hero h1{
    font-size:2.5rem;
}

.titulo h2{
    font-size:2rem;
}

}

</style>
</head>

<body>

<button class="dark-btn" id="darkMode">🌙</button>

<header>

<div class="hero">

<h1>
🌱 Agro <span>Forte</span>
</h1>

<p>
Tecnologia, inovação e sustentabilidade para transformar o futuro da agricultura.
</p>

<a href="#sobre" class="btn">
Explorar
</a>

</div>

</header>

<nav>
<ul>
<li><a href="#sobre">Sobre</a></li>
<li><a href="#sustentabilidade">Sustentabilidade</a></li>
<li><a href="#tecnologia">Tecnologia</a></li>
<li><a href="#galeria">Galeria</a></li>
<li><a href="#contato">Contato</a></li>
</ul>
</nav>

<section id="sobre">

<div class="titulo">
<h2>O Agro e o Futuro</h2>
</div>

<p style="text-align:center;max-width:900px;margin:auto;">
O agronegócio moderno busca equilibrar produtividade,
inovação tecnológica e preservação ambiental para garantir
alimentos de qualidade às futuras gerações.
</p>

</section>

<section id="sustentabilidade">

<div class="titulo">
<h2>Sustentabilidade</h2>
</div>

<div class="cards">

<div class="card">
<h3>🌳 Preservação Ambiental</h3>
<p>Proteção dos recursos naturais e biodiversidade.</p>
</div>

<div class="card">
<h3>💧 Gestão da Água</h3>
<p>Irrigação inteligente e economia hídrica.</p>
</div>

<div class="card">
<h3>☀️ Energia Renovável</h3>
<p>Uso de energia solar e biocombustíveis.</p>
</div>

</div>

</section>

<section id="tecnologia">

<div class="titulo">
<h2>Tecnologia no Campo</h2>
</div>

<div class="cards">

<div class="card">
<h3>🚜 Agricultura de Precisão</h3>
<p>Drones, sensores e GPS para máxima eficiência.</p>
</div>

<div class="card">
<h3>📊 Monitoramento Inteligente</h3>
<p>Controle climático e análise do solo em tempo real.</p>
</div>

<div class="card">
<h3>🤖 Inteligência Artificial</h3>
<p>Previsões e decisões mais inteligentes para o produtor.</p>
</div>

</div>

</section>

<section class="stats">

<div class="stats-grid">

<div class="stat">
<h2>50k+</h2>
<p>Produtores</p>
</div>

<div class="stat">
<h2>120+</h2>
<p>Projetos</p>
</div>

<div class="stat">
<h2>95%</h2>
<p>Eficiência</p>
</div>

<div class="stat">
<h2>30+</h2>
<p>Países</p>
</div>

</div>

</section>

<section id="galeria">

<div class="titulo">
<h2>Galeria</h2>
</div>

<div class="galeria-grid">

<img src="https://images.unsplash.com/photo-1500937386664-56d1dfef3854" alt="">
<img src="https://images.unsplash.com/photo-1464226184884-fa280b87c399" alt="">
<img src="https://images.unsplash.com/photo-1501004318641-b39e6451bec6" alt="">
<img src="https://images.unsplash.com/photo-1472396961693-142e6e269027" alt="">

</div>

</section>

<section>

<div class="titulo">
<h2>Evolução da Agricultura</h2>
</div>

<div class="timeline">

<div class="evento">
<h3>1950</h3>
<p>Mecanização agrícola.</p>
</div>

<div class="evento">
<h3>1990</h3>
<p>Agricultura de precisão.</p>
</div>

<div class="evento">
<h3>2026</h3>
<p>IA, drones e automação.</p>
</div>

</div>

</section>

<section>

<div class="titulo">
<h2>Depoimentos</h2>
</div>

<div class="depoimentos">

<div class="depoimento">
<p>
"A tecnologia aumentou nossa produtividade em mais de 40%."
</p>
<br>
<strong>João Silva</strong>
</div>

<div class="depoimento">
<p>
"Reduzimos desperdícios e melhoramos a sustentabilidade."
</p>
<br>
<strong>Maria Oliveira</strong>
</div>

</div>

</section>

<section id="contato">

<div class="titulo">
<h2>Contato</h2>
</div>

<form>

<input type="text" placeholder="Nome" required>

<input type="email" placeholder="E-mail" required>

<textarea placeholder="Digite sua mensagem"></textarea>

<button type="submit">
Enviar Mensagem
</button>

</form>

</section>

<footer>

<h3>🌱 Agro Forte</h3>

<p>
Produzindo alimentos com responsabilidade e inovação.
</p>

<br>

<p>
© 2026 Todos os Direitos Reservados
</p>

</footer>

<a href="https://wa.me/5511999999999" class="whatsapp">
📱
</a>

<script>

document.getElementById("darkMode").onclick = () =>{
    document.body.classList.toggle("dark");
};

</script>

</body>
</html>
