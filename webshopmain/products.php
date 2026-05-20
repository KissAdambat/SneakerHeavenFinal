<?php
require_once __DIR__ . '/api/shoes.php';

$shoes = getAllShoes();
?>
<!DOCTYPE html>
<html lang="hu">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Termékek | SneakerHeaven</title>
    <link rel="stylesheet" href="./css/productstyle.css">
</head>
<body>
    <header>
        <nav>
            <div class="logo">SNEAKERHEAVEN</div>
            <ul>
                <li><a href="./index.php">FŐOLDAL</a></li>
                <li><a href="./products.php">SHOP</a></li>
                <li><a href="./profile.php">PROFIL</a></li>
            </ul>
        </nav>
    </header>

    <section class="products">
        <h2 class="section-title">TERMÉKEK</h2>
        <div class="product-grid">
            <?php if (count($shoes) === 0): ?>
                <div class="card">
                    <div class="card-content">
                        <h3>Nincs megjeleníthető cipő</h3>
                        <p>Jelenleg nincs találat a shoes táblában.</p>
                    </div>
                </div>
            <?php else: ?>
                <?php foreach ($shoes as $shoe): ?>
                    <div class="card">
                        <img src="<?= htmlspecialchars(getShoeImage($shoe), ENT_QUOTES, 'UTF-8') ?>" alt="<?= htmlspecialchars(getShoeName($shoe), ENT_QUOTES, 'UTF-8') ?>">
                        <div class="card-content">
                            <h3><?= htmlspecialchars(getShoeName($shoe), ENT_QUOTES, 'UTF-8') ?></h3>
                            <div class="price"><?= htmlspecialchars(getShoePrice($shoe), ENT_QUOTES, 'UTF-8') ?> €</div>
                            <?php if (!empty($shoe['description'])): ?>
                                <p><?= htmlspecialchars($shoe['description'], ENT_QUOTES, 'UTF-8') ?></p>
                            <?php endif; ?>
                            <div class="card-actions">
                                <button class="btn-add">ÚJONNAN</button>
                                <button class="btn-used">HASZNÁLT</button>
                            </div>
                        </div>
                    </div>
                <?php endforeach; ?>
            <?php endif; ?>
        </div>
    </section>
</body>
</html>
