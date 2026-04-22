<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover" />
    <title>NexusShop — Elevated E‑Commerce Experience</title>

    <!-- Google Fonts & Icons -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,300;14..32,400;14..32,500;14..32,600;14..32,700&family=Space+Grotesk:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        :root {
            --bg-dark: #0a0c10;
            --bg-surface: #11141c;
            --bg-elevated: #1a1f2a;
            --primary: #ffffff;
            --accent: #5c6bc0;
            --accent-glow: #7986cb;
            --accent-gradient: linear-gradient(135deg, #5c6bc0, #8e99f3);
            --muted: #8e9aaf;
            --border-subtle: rgba(255, 255, 255, 0.06);
            --card-bg: rgba(22, 28, 38, 0.8);
            --success: #2ecc71;
            --radius-sm: 12px;
            --radius-md: 18px;
            --radius-xl: 28px;
            --container: 1280px;
            --shadow-md: 0 20px 35px -12px rgba(0, 0, 0, 0.4);
            --glow: 0 0 12px rgba(92, 107, 192, 0.3);
        }

        body {
            background: radial-gradient(circle at 10% 20%, #0e121b, #05070a);
            font-family: 'Inter', sans-serif;
            color: var(--primary);
            line-height: 1.5;
            scroll-behavior: smooth;
        }

        .container {
            max-width: var(--container);
            margin: 0 auto;
            padding: 0 24px;
        }

        /* glass morph header */
        header {
            position: sticky;
            top: 0;
            z-index: 100;
            backdrop-filter: blur(16px);
            background: rgba(10, 12, 18, 0.75);
            border-bottom: 1px solid var(--border-subtle);
        }

        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 14px 0;
            gap: 20px;
            flex-wrap: wrap;
        }

        .brand {
            font-family: 'Space Grotesk', monospace;
            font-weight: 700;
            font-size: 1.7rem;
            letter-spacing: -0.02em;
            background: linear-gradient(120deg, #fff, var(--accent));
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
        }

        .brand span {
            background: none;
            -webkit-background-clip: unset;
            background-clip: unset;
            color: var(--accent);
        }

        nav.main-nav ul {
            display: flex;
            gap: 12px;
            list-style: none;
        }

        nav.main-nav li a {
            padding: 8px 18px;
            border-radius: 40px;
            font-weight: 500;
            transition: all 0.2s;
            background: transparent;
            display: flex;
            align-items: center;
            gap: 8px;
            font-size: 0.95rem;
        }

        nav.main-nav li a:hover {
            background: rgba(92, 107, 192, 0.2);
            color: var(--accent-glow);
        }

        .search {
            background: rgba(255, 255, 255, 0.05);
            backdrop-filter: blur(4px);
            border-radius: 60px;
            padding: 8px 18px;
            display: flex;
            align-items: center;
            gap: 10px;
            border: 1px solid var(--border-subtle);
            transition: all 0.2s;
        }

        .search input {
            background: transparent;
            border: none;
            outline: none;
            color: white;
            width: 200px;
        }

        .search input::placeholder {
            color: var(--muted);
        }

        .cart {
            position: relative;
            background: rgba(255,255,255,0.05);
            padding: 8px 14px;
            border-radius: 40px;
            transition: 0.2s;
        }
        .cart-count {
            position: absolute;
            top: -6px;
            right: -6px;
            background: var(--accent);
            border-radius: 30px;
            width: 20px;
            height: 20px;
            font-size: 11px;
            font-weight: bold;
            display: grid;
            place-items: center;
        }

        .mobile-toggle {
            display: none;
            background: none;
            border: none;
            font-size: 26px;
            color: white;
        }

        /* hero modern */
        .hero {
            background: radial-gradient(ellipse at 70% 30%, #1a1f2e, #07090f);
            border-radius: 0 0 48px 48px;
            margin-bottom: 16px;
            padding: 70px 20px;
            text-align: center;
            box-shadow: var(--shadow-md);
        }

        .hero h1 {
            font-size: 3.3rem;
            font-weight: 700;
            background: linear-gradient(130deg, #fff, var(--accent));
            background-clip: text;
            -webkit-background-clip: text;
            color: transparent;
            letter-spacing: -0.02em;
        }

        .btn {
            border: none;
            padding: 12px 28px;
            border-radius: 40px;
            font-weight: 600;
            cursor: pointer;
            transition: 0.2s;
            font-size: 0.95rem;
        }

        .btn-primary {
            background: var(--accent-gradient);
            color: white;
            box-shadow: 0 4px 12px rgba(92, 107, 192, 0.4);
        }

        .btn-primary:hover {
            transform: scale(1.02);
            box-shadow: 0 10px 22px rgba(92, 107, 192, 0.5);
        }

        .btn-ghost {
            background: rgba(255,255,255,0.08);
            border: 1px solid rgba(255,255,255,0.2);
            color: white;
        }

        .section-title {
            font-size: 2rem;
            font-weight: 600;
            letter-spacing: -0.01em;
        }

        .grid {
            display: grid;
            gap: 24px;
        }

        .categories {
            grid-template-columns: repeat(6, 1fr);
        }

        .cat-card {
            background: var(--card-bg);
            backdrop-filter: blur(8px);
            border: 1px solid var(--border-subtle);
            border-radius: 28px;
            padding: 20px 12px;
            text-align: center;
            transition: all 0.25s ease;
            cursor: pointer;
        }

        .cat-card:hover {
            transform: translateY(-8px);
            border-color: var(--accent);
            background: rgba(92, 107, 192, 0.15);
            box-shadow: var(--glow);
        }

        .cat-card .icon {
            font-size: 32px;
            background: linear-gradient(145deg, var(--accent), #b0c4ff);
            background-clip: text;
            -webkit-background-clip: text;
            color: transparent;
        }

        /* products */
        .products {
            grid-template-columns: repeat(4, 1fr);
        }

        .product {
            background: var(--bg-elevated);
            border-radius: 28px;
            overflow: hidden;
            transition: 0.25s;
            border: 1px solid var(--border-subtle);
            backdrop-filter: blur(4px);
        }

        .product:hover {
            transform: translateY(-6px);
            border-color: var(--accent);
            box-shadow: 0 20px 30px -10px black;
        }

        .product img {
            width: 100%;
            height: 210px;
            object-fit: cover;
            transition: 0.3s;
        }
        .product:hover img {
            transform: scale(1.02);
        }

        .product-body {
            padding: 16px;
        }

        .price {
            font-weight: 700;
            font-size: 1.3rem;
            color: var(--accent);
        }

        .add-btn {
            background: var(--accent-gradient);
            border: none;
            padding: 10px;
            border-radius: 40px;
            font-weight: 600;
            color: white;
            cursor: pointer;
            transition: 0.2s;
            width: 100%;
        }

        /* deal card premium */
        .deal {
            display: flex;
            background: linear-gradient(125deg, #0f1420, #080c14);
            border-radius: 48px;
            overflow: hidden;
            border: 1px solid rgba(92, 107, 192, 0.3);
            box-shadow: var(--shadow-md);
        }

        .timer {
            display: flex;
            gap: 16px;
        }
        .time-box {
            background: #00000055;
            backdrop-filter: blur(4px);
            padding: 12px 18px;
            border-radius: 20px;
            text-align: center;
            font-weight: 700;
            font-size: 1.5rem;
            min-width: 70px;
        }

        /* testimonials modern */
        .testimonials {
            display: flex;
            gap: 24px;
            overflow-x: auto;
            padding: 8px 4px 20px;
        }
        .testimonial {
            min-width: 320px;
            background: var(--bg-elevated);
            border-radius: 32px;
            padding: 24px;
            border: 1px solid var(--border-subtle);
        }

        .newsletter {
            background: linear-gradient(145deg, #101520, #0b0e16);
            border-radius: 48px;
            padding: 56px 24px;
            text-align: center;
            border: 1px solid var(--border-subtle);
        }

        .newsletter input {
            background: rgba(0,0,0,0.5);
            border: 1px solid var(--border-subtle);
            padding: 14px 22px;
            border-radius: 60px;
            color: white;
            width: 280px;
        }

        footer {
            border-top: 1px solid var(--border-subtle);
            margin-top: 48px;
            padding: 48px 0 32px;
        }

        @media (max-width: 1100px) {
            .categories { grid-template-columns: repeat(3,1fr); }
            .products { grid-template-columns: repeat(3,1fr); }
        }
        @media (max-width: 860px) {
            nav.main-nav { display: none; }
            .mobile-toggle { display: block; }
            .products { grid-template-columns: repeat(2,1fr); }
            .categories { grid-template-columns: repeat(2,1fr); }
            .deal { flex-direction: column; }
        }
        @media (max-width: 560px) {
            .products, .categories { grid-template-columns: 1fr; }
            .hero h1 { font-size: 2.2rem; }
        }

        .rating i, .rating span { color: #ffcd4a; }
        .muted { color: var(--muted); }
        .badge-new {
            background: var(--accent);
            border-radius: 30px;
            padding: 4px 12px;
            font-size: 11px;
            font-weight: bold;
            display: inline-block;
        }
        .wishlist-icon {
            background: rgba(255,255,255,0.05);
            border-radius: 50%;
            width: 36px;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            cursor: pointer;
        }
    </style>
</head>
<body>

<header>
    <div class="container header-inner">
        <div style="display: flex; align-items: center; gap: 20px;">
            <button class="mobile-toggle" id="mobileToggleBtn"><i class="fas fa-bars"></i></button>
            <div class="brand">NEXUS<span>SHOP</span></div>
        </div>
        <nav class="main-nav" id="mainNav">
            <ul>
                <li><a href="#"><i class="fas fa-compass"></i> Explore</a></li>
                <li><a href="#" id="catTrigger"><i class="fas fa-th-large"></i> Categories</a></li>
                <li><a href="#deals"><i class="fas fa-bolt"></i> Flash Sale</a></li>
                <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
            </ul>
        </nav>
        <div style="display: flex; gap: 16px; align-items: center;">
            <div class="search">
                <i class="fas fa-search" style="color: var(--muted);"></i>
                <input type="text" id="searchInput" placeholder="Search items...">
            </div>
            <div class="cart" id="cartBtn" style="cursor: pointer;">
                <i class="fas fa-bag-shopping"></i>
                <span class="cart-count" id="cartCount">0</span>
            </div>
        </div>
    </div>
    <!-- mobile dropdown -->
    <div id="mobileMenuPanel" style="display: none; background: #0c0f16; border-top: 1px solid #1e2532;">
        <div class="container" style="padding: 16px 0;">
            <ul style="list-style: none; display: flex; flex-direction: column; gap: 12px;">
                <li><a href="#">Home</a></li>
                <li><a href="#deals">Deals</a></li>
                <li><a href="#testimonials">Testimonials</a></li>
            </ul>
        </div>
    </div>
</header>

<main>
    <!-- Hero Section -->
    <section class="hero">
        <div class="container">
            <h1>Manish varma — <span style="color:var(--accent)">Elevated</span> Picks</h1>
            <p style="font-size: 1.2rem; max-width: 680px; margin: 18px auto; opacity: 0.8;">Discover curated tech, style, and accessories. Limited drops, infinite quality.</p>
            <div style="display: flex; gap: 16px; justify-content: center; flex-wrap: wrap;">
                <button class="btn btn-primary" id="shopNowBtn"><i class="fas fa-store"></i> Shop Now</button>
                <button class="btn btn-ghost" id="exploreDealsBtn"><i class="fas fa-gem"></i> Flash Deals</button>
            </div>
        </div>
    </section>

    <!-- Categories Grid -->
    <section class="container section" style="padding: 32px 0;">
        <div class="title" style="margin-bottom: 28px;">
            <h2 class="section-title">Curated Collections</h2>
            <p class="muted">Explore by lifestyle & gear</p>
        </div>
        <div class="grid categories" id="categoriesGrid"></div>
    </section>

    <!-- Products Grid -->
    <section class="container section" style="padding: 16px 0 48px;">
        <div class="title" style="margin-bottom: 28px;">
            <h2 class="section-title">Trending Essentials</h2>
            <p class="muted">Most loved by our community</p>
        </div>
        <div class="grid products" id="productsGrid"></div>
    </section>

    <!-- Flash Deal Premium -->
    <section id="deals" class="container" style="margin: 40px auto;">
        <div class="deal">
            <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=85" alt="MacBook M2" style="width: 50%; object-fit: cover;">
            <div class="content" style="padding: 36px;">
                <h2 style="font-size: 2rem;">MacBook Air M2 <span style="background: var(--accent); padding: 4px 12px; border-radius: 60px; font-size: 0.9rem;">-17%</span></h2>
                <p class="muted" style="margin: 12px 0 20px;">Next‑gen performance, stellar battery, and a sleek design.</p>
                <div class="timer" id="timerContainer">
                    <div class="time-box"><span id="dealDays">0</span><div class="muted" style="font-size: 11px;">Days</div></div>
                    <div class="time-box"><span id="dealHours">00</span><div class="muted">Hrs</div></div>
                    <div class="time-box"><span id="dealMinutes">00</span><div class="muted">Min</div></div>
                    <div class="time-box"><span id="dealSeconds">00</span><div class="muted">Sec</div></div>
                </div>
                <div style="display: flex; align-items: baseline; gap: 16px; margin: 20px 0;">
                    <div class="price" style="font-size: 2rem;">$999</div>
                    <div class="old-price" style="text-decoration: line-through; color: var(--muted);">$1,199</div>
                </div>
                <button class="btn btn-primary" id="flashDealAddBtn" style="padding: 14px 36px;"><i class="fas fa-bolt"></i> Add to cart</button>
            </div>
        </div>
    </section>

    <!-- Testimonials -->
    <section id="testimonials" class="container section">
        <div class="title">
            <h2 class="section-title">Voices of excellence</h2>
            <p class="muted">Trusted by thousands</p>
        </div>
        <div class="testimonials" id="testimonialsWrapper"></div>
    </section>

    <!-- Newsletter Enhanced -->
    <section class="container" style="margin: 40px auto 20px;">
        <div class="newsletter">
            <i class="fas fa-envelope-open-text" style="font-size: 40px; color: var(--accent); margin-bottom: 10px;"></i>
            <h3 style="font-size: 28px;">Join the Inner Circle</h3>
            <p>Get early access, secret deals & 10% off your first order</p>
            <form id="newsletterForm" style="display: flex; justify-content: center; gap: 12px; flex-wrap: wrap; margin-top: 24px;">
                <input type="email" id="newsEmail" placeholder="you@example.com" required>
                <button class="btn btn-primary" type="submit">Subscribe →</button>
            </form>
            <div id="newsMsg" style="margin-top: 14px; font-size: 13px;"></div>
        </div>
    </section>
</main>

<footer>
    <div class="container" style="display: flex; justify-content: space-between; flex-wrap: wrap; gap: 32px;">
        <div><div style="font-weight: 700; font-size: 22px;">NexusShop</div><div class="muted">Minimalist. Modern. Premium.</div></div>
        <div style="display: flex; gap: 48px;"><div><strong>Discover</strong><div class="muted">New arrivals<br>Stories</div></div><div><strong>Support</strong><div class="muted">FAQ / Returns<br>Contact</div></div></div>
    </div>
    <div class="container" style="text-align: center; margin-top: 48px; font-size: 12px; color: var(--muted);">© <span id="currentYear"></span> NexusShop — all rights reserved.</div>
</footer>

<script>
    // -------------- DATA --------------
    const CATEGORIES = [
        { id: 'tech', name: 'Smart Tech', icon: 'fa-microchip' },
        { id: 'audio', name: 'Audio', icon: 'fa-headphones' },
        { id: 'wear', name: 'Wearables', icon: 'fa-apple' },
        { id: 'fashion', name: 'Streetwear', icon: 'fa-hoodie' },
        { id: 'accessory', name: 'Accessories', icon: 'fa-watch' },
        { id: 'gaming', name: 'Gaming', icon: 'fa-gamepad' }
    ];
    const PRODUCTS = [
        { id: 1, title: 'iPhone 15 Pro', price: 1099, oldPrice: 1199, rating: 5, reviews: 234, badge: 'New', img: 'https://images.unsplash.com/photo-1695048133142-1a20484d2569?auto=format&fit=crop&w=600&q=80', category: 'tech' },
        { id: 2, title: 'MacBook Pro M3', price: 1999, rating: 5, reviews: 98, img: 'https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=600&q=80', category: 'tech' },
        { id: 3, title: 'Sony XM5', price: 398, oldPrice: 499, rating: 5, reviews: 512, badge: '-20%', img: 'https://images.unsplash.com/photo-1618366712010-f4ae9c647dcb?auto=format&fit=crop&w=600&q=80', category: 'audio' },
        { id: 4, title: 'AirPods Pro 2', price: 239, rating: 4, reviews: 877, img: 'https://images.unsplash.com/photo-1606841837239-c5a1a4a07af7?auto=format&fit=crop&w=600&q=80', category: 'audio' },
        { id: 5, title: 'UltraWatch 9', price: 429, oldPrice: 499, rating: 4, reviews: 321, badge: 'Hot', img: 'https://images.unsplash.com/photo-1579586337278-3befd40fd17a?auto=format&fit=crop&w=600&q=80', category: 'wear' },
        { id: 6, title: 'Urban Backpack', price: 89, rating: 5, reviews: 144, img: 'https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=600&q=80', category: 'accessory' },
        { id: 7, title: 'Mechanical Keyboard', price: 149, oldPrice: 199, rating: 5, reviews: 267, badge: 'Limited', img: 'https://images.unsplash.com/photo-1618384887929-16ec33d0b104?auto=format&fit=crop&w=600&q=80', category: 'gaming' },
        { id: 8, title: 'Aesthetic Sneakers', price: 119, rating: 4, reviews: 88, img: 'https://images.unsplash.com/photo-1549298916-b41d501d3772?auto=format&fit=crop&w=600&q=80', category: 'fashion' }
    ];

    let cartTotal = 0;
    const cartCountSpan = document.getElementById('cartCount');
    function updateCartUI() { cartCountSpan.innerText = cartTotal; }

    function addToCartById(pid) {
        cartTotal++;
        updateCartUI();
        const btn = document.querySelector(`.add-to-cart-btn[data-pid='${pid}']`);
        if (btn) {
            btn.innerHTML = '<i class="fas fa-check"></i> Added';
            setTimeout(() => { btn.innerHTML = '<i class="fas fa-cart-plus"></i> Add'; }, 1000);
        }
    }

    // render categories
    const catGrid = document.getElementById('categoriesGrid');
    function renderCategories() {
        catGrid.innerHTML = '';
        CATEGORIES.forEach(c => {
            const card = document.createElement('div');
            card.className = 'cat-card';
            card.innerHTML = `<div class="icon"><i class="fas ${c.icon}"></i></div><h4>${c.name}</h4><div class="muted" style="font-size:12px;">${c.name} collection</div>`;
            card.addEventListener('click', () => {
                document.getElementById('searchInput').value = c.name;
                filterProductsBySearch(c.name);
            });
            catGrid.appendChild(card);
        });
    }

    function renderProducts(productArray) {
        const prodGrid = document.getElementById('productsGrid');
        prodGrid.innerHTML = '';
        productArray.forEach(p => {
            const prodDiv = document.createElement('div');
            prodDiv.className = 'product';
            const starRating = '★'.repeat(Math.floor(p.rating)) + '☆'.repeat(5 - Math.floor(p.rating));
            prodDiv.innerHTML = `
                <img src="${p.img}" alt="${p.title}" loading="lazy">
                <div class="product-body">
                    <div style="display:flex; justify-content:space-between;"><h4>${escapeHtml(p.title)}</h4>${p.badge ? `<span class="badge-new">${p.badge}</span>` : ''}</div>
                    <div class="muted" style="font-size:13px; margin:6px 0;">${p.category}</div>
                    <div class="price-row" style="display:flex; justify-content:space-between; align-items:center;">
                        <div><span class="price">$${p.price}</span> ${p.oldPrice ? `<span class="muted" style="text-decoration:line-through;">$${p.oldPrice}</span>` : ''}</div>
                        <div class="rating"><i class="fas fa-star"></i> ${p.rating} <span style="color:var(--muted);">(${p.reviews})</span></div>
                    </div>
                </div>
                <div style="padding: 0 16px 16px 16px;">
                    <button class="add-btn add-to-cart-btn" data-pid="${p.id}"><i class="fas fa-cart-plus"></i> Add</button>
                </div>
            `;
            prodGrid.appendChild(prodDiv);
        });
        document.querySelectorAll('.add-to-cart-btn').forEach(btn => {
            btn.addEventListener('click', (e) => {
                const id = parseInt(btn.dataset.pid);
                addToCartById(id);
            });
        });
    }

    function filterProductsBySearch(query) {
        const lowerQuery = query.toLowerCase().trim();
        if (!lowerQuery) return renderProducts(PRODUCTS);
        const filtered = PRODUCTS.filter(p => p.title.toLowerCase().includes(lowerQuery) || p.category.toLowerCase().includes(lowerQuery));
        renderProducts(filtered);
    }

    function escapeHtml(str) { return str.replace(/[&<>]/g, function(m){if(m==='&') return '&amp;'; if(m==='<') return '&lt;'; if(m==='>') return '&gt;'; return m;}); }

    // testimonials fresh
    const testimonialsData = [
        { name: 'Sophia Chen', text: 'Absolutely in love with the design and speed. The UI is next level!', rating: 5, avatar: 'https://randomuser.me/api/portraits/women/68.jpg' },
        { name: 'Marcus Rivera', text: 'Fast shipping and premium quality. The MacBook deal was insane.', rating: 5, avatar: 'https://randomuser.me/api/portraits/men/32.jpg' }
    ];
    function renderTestimonials() {
        const wrap = document.getElementById('testimonialsWrapper');
        if(!wrap) return;
        wrap.innerHTML = testimonialsData.map(t => `
            <div class="testimonial">
                <div class="rating">${'★'.repeat(t.rating)}${'☆'.repeat(5-t.rating)}</div>
                <p style="margin:12px 0;">“${t.text}”</p>
                <div style="display:flex; gap:12px; align-items:center;"><img src="${t.avatar}" style="width:42px; height:42px; border-radius:50%; object-fit:cover;"><div><strong>${t.name}</strong><div class="muted">Verified buyer</div></div></div>
            </div>
        `).join('');
    }

    // countdown
    function initCountdown() {
        const targetTime = new Date().getTime() + (24 * 3600 * 1000) + (5 * 60 * 60 * 1000);
        function update() {
            const now = new Date().getTime();
            const diff = targetTime - now;
            if(diff <= 0) { document.getElementById('dealDays').innerText='0'; return; }
            const days = Math.floor(diff / (1000*3600*24));
            const hours = Math.floor((diff % (86400000)) / 3600000);
            const mins = Math.floor((diff % 3600000) / 60000);
            const secs = Math.floor((diff % 60000) / 1000);
            document.getElementById('dealDays').innerText = days;
            document.getElementById('dealHours').innerText = hours < 10 ? '0'+hours : hours;
            document.getElementById('dealMinutes').innerText = mins < 10 ? '0'+mins : mins;
            document.getElementById('dealSeconds').innerText = secs < 10 ? '0'+secs : secs;
        }
        update(); setInterval(update, 1000);
    }

    // newsletter
    const newsForm = document.getElementById('newsletterForm');
    const newsMsgDiv = document.getElementById('newsMsg');
    newsForm.addEventListener('submit', (e) => {
        e.preventDefault();
        const email = document.getElementById('newsEmail').value.trim();
        if(!email || !email.includes('@')) {
            newsMsgDiv.innerText = 'Valid email required';
            newsMsgDiv.style.color = '#ff9e8f';
            return;
        }
        newsMsgDiv.innerText = '✨ Subscribed! Check your inbox.';
        newsMsgDiv.style.color = '#b0f0b0';
        document.getElementById('newsEmail').value = '';
        setTimeout(() => { newsMsgDiv.innerText = ''; }, 3000);
    });

    // event listeners + mobile
    document.getElementById('mobileToggleBtn').addEventListener('click', () => {
        const panel = document.getElementById('mobileMenuPanel');
        panel.style.display = panel.style.display === 'none' ? 'block' : 'none';
    });
    document.getElementById('shopNowBtn').addEventListener('click', () => window.scrollTo({top: document.getElementById('productsGrid').offsetTop - 80, behavior: 'smooth'}));
    document.getElementById('exploreDealsBtn').addEventListener('click', () => document.getElementById('deals').scrollIntoView({behavior: 'smooth'}));
    document.getElementById('flashDealAddBtn').addEventListener('click', () => { cartTotal++; updateCartUI(); alert('✨ MacBook added to cart'); });
    document.getElementById('searchInput').addEventListener('input', (e) => filterProductsBySearch(e.target.value));
    document.getElementById('cartBtn').addEventListener('click', () => alert(`🛒 Cart items: ${cartTotal} item(s) — demo checkout`));
    document.getElementById('catTrigger').addEventListener('click', (e) => { e.preventDefault(); alert('Browse categories using the cards below'); });

    renderCategories();
    renderProducts(PRODUCTS);
    renderTestimonials();
    initCountdown();
    updateCartUI();
    document.getElementById('currentYear').innerText = new Date().getFullYear();
</script>
</body>
</html>
