<?php

session_start();

require_once "function.php";

if (!isset($_SESSION["akun-admin"]) && !isset($_SESSION["akun-user"])) {

    header("Location: login.php");

    exit;

} 




?>



<!DOCTYPE html>

<html lang="en">



<head>

    <meta charset="UTF-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="./src/css/bootstrap-5.2.0/css/bootstrap.min.css">

    <link rel="stylesheet" href="./src/css/bootstrap-icons-1.8.3/bootstrap-icons.css">

    <title>Beranda</title>

</head>



<body class="bg-light">

    <!-- Header -->

    <div class="container-fluid position-fixed top-0 bg-dark p-2 d-flex justify-content-between" style="z-index: 2;">

        <div class="text-white h3 d-flex">

            <span id="menu-list" role="button"><i class="bi bi-list"></i></span>

            <span class="mx-3">The Burjo </span>

        </div>

        <a class="btn btn-danger fw-bold" href="logout.php" onclick="return confirm('Ingin Logout?')">Logout</a>

    </div>

    <!-- List Menu -->

    <div id="dropdown-menu" class="container-fluid position-fixed float-start bg-dark text-white w-auto vh-100" style="display: none; z-index: 1; top: 50px;">

        <ul>

            <br>

            <li><a class="text-decoration-none p-2 h5 text-light" href="index.php">MENU</a></li><br>

            <?php if (isset($_SESSION["akun-admin"])) { ?>

            <li><a class="text-decoration-none p-2 h5 text-light" href="index.php?pesanan">PESANAN</a></li><br>

            <li><a class="text-decoration-none p-2 h5 text-light" href="index.php?transaksi">TRANSAKSI</a></li>

            <?php } ?>

        </ul>

    </div>

    <!-- Content -->

    <div class="container" style="z-index: -1; margin-top: 60px;">

    <?php

    if (isset($_GET["pesanan"])) include "halaman/pesanan.php";

    else if (isset($_GET["transaksi"])) include "halaman/transaksi.php";

    else include "halaman/beranda.php";

    ?>

    </div>

    <script src="./src/css/bootstrap-5.2.0/js/bootstrap.min.js"></script>

    <script src="src/js/beranda.js"></script>

</body>



</html>