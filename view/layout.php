<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="icon" type="image/png" href="assets/img/favicon-32x32.png" sizes="32x32" />
    <link rel="icon" type="image/png" href="assets/img/favicon-16x16.png" sizes="16x16" />
    <title>The Fab Lab Festival - <?php echo $title;?></title>
</head>

<body>
    <header class="header">
        <h1 class="hidden">The Fab Lab Festival</h1>
        <div class="menu__wrapper">
            <nav class="menu">
                <ul class="menu__items">
                    <li class="menu__item menu__item--item1"><a class="menu__link <?php if($currentPage=='home'){echo 'menu__link--active';};?>" href="index.php?page=home">Home</a></li>
                    <li class="menu__item menu__item--item2"><a class="menu__link <?php if($currentPage=='trucks'){echo 'menu__link--active';};?>" href="index.php?page=trucks">Trucks</a></li>
                    <li><a class="logo" href="index.php?page=home"><img class="navlogo" src="assets/img/logo_big.svg" alt="logo"></a></li>
                    <li class="menu__item menu__item--item3"><a class="menu__link <?php if($currentPage=='map'){echo 'menu__link--active';};?>" href="index.php?page=map">Map</a></li>
                    <li class="menu__item menu__item--item4"><a class="menu__link 
                    <?php 
                    if($currentPage=='tickets'){
                        echo 'menu__link--active';
                    } else if ($currentPage=='cart'){
                        echo 'menu__link--active';
                    };
                    ?>
                    " href="index.php?page=tickets">Tickets</a></li>
                </ul>
            </nav>
        </div>
        <a class="viewcart <?php if (empty($_SESSION['cart'])){echo 'hidden';};?>" href="index.php?page=cart">View Cart (<?php echo $numItems;?>)</a>
        
    </header>
   <div class="navbar__spacemaker"></div>
    <?php
      if(!empty($error)) {
        echo '<div class="error box">' . $error . '</div>';
      }
      if(!empty($info)) {
        echo '<div class="info box">' . $info . '</div>';
      }
    ?>

<main>
    <?php echo $content; ?>
</main>

    <footer class="footer">&copy;2019, The Fab Lab Festival</footer>
    <script>const currentPage = (`<?php echo $currentPage?>`);</script>
    <script src="js/script.js"></script>
    
</body>

</html>
