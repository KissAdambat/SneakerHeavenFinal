<?php
require_once __DIR__ . '/db.php';

function getAllShoes(): array
{
    $mysqli = dbConnect();
    $query = 'SELECT * FROM shoes';
    $result = $mysqli->query($query);

    if (!$result) {
        $mysqli->close();
        die('Lekérdezési hiba: ' . $mysqli->error);
    }

    $shoes = $result->fetch_all(MYSQLI_ASSOC);
    $result->free();
    $mysqli->close();

    return $shoes;
}

function getShoeName(array $shoe): string
{
    return $shoe['Brand'] . ' ' . $shoe['Model'].' ('.$shoe['Color'].')' ?? 'Név ismeretlen';
}

function getShoePrice(array $shoe): string
{
    if (!empty($shoe['NewPrice'].' vagy '.$shoe['UsedPrice'])) {
        return $shoe['NewPrice'].' vagy '.$shoe['UsedPrice'];
    }
    if (!empty($shoe['cost'])) {
        return $shoe['cost'];
    }
    return 'Ár nem ismert';
}

function getShoeImage(array $shoe): string
{
    $image = $shoe['image'] ?? $shoe['img'] ?? $shoe['photo'] ?? '';
    if (!$image) {
        return 'https://via.placeholder.com/400x280?text=Nincs+Kép';
    }
    if (preg_match('~^(https?:)?//~i', $image)) {
        return $image;
    }
    if (strpos($image, './') === 0 || strpos($image, '../') === 0 || strpos($image, '/') === 0) {
        return $image;
    }
    return './images/' . ltrim($image, '/');
}
