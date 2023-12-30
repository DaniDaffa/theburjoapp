<?php


$koneksi = mysqli_connect("localhost", "root", "", "burjo");


// Funtion Register

function register_akun()

{

    global $koneksi;



    $username = htmlspecialchars($_POST["username"]);

    $password = md5(htmlspecialchars($_POST["password"]));

    $konfirmasi_password = md5(htmlspecialchars($_POST["konfirmasi-password"]));



    $cek_username = mysqli_fetch_assoc(mysqli_query($koneksi, "SELECT * FROM `user` WHERE username = '$username'"));



    if ($cek_username != null) {

        echo "<script>

            alert('Username sudah ada!');

        </script>";

        return -1;
    } else if ($password != $konfirmasi_password) {

        echo "<script>

            alert('Password Tidak Sesuai!');

        </script>";

        return -1;
    }



    mysqli_query($koneksi, "INSERT INTO `user` (username, password)

                            VALUES ('$username', '$password')

    ");

    return mysqli_affected_rows($koneksi);
}



// Function Login

function login_akun()

{

    global $koneksi;



    $username = htmlspecialchars($_POST["username"]);

    $password = md5(htmlspecialchars($_POST["password"]));



    $cek_akun_admin = mysqli_fetch_assoc(mysqli_query($koneksi, "SELECT * FROM `admin` 

                                                           WHERE username = '$username' AND 

                                                                `password` = '$password'

    "));

    $cek_akun_user = mysqli_fetch_assoc(mysqli_query($koneksi, "SELECT * FROM `user` 

                                                           WHERE username = '$username' AND 

                                                                `password` = '$password'

    "));



    if ($cek_akun_admin == null && $cek_akun_user == null) return false;

    if ($cek_akun_user != null) {

        $_SESSION["akun-user"] = [

            "username" => $username,

            "password" => $password

        ];
    }
    if ($cek_akun_admin != null) {

        $_SESSION["akun-admin"] = [

            "username" => $username,

            "password" => $password

        ];
    }

    header("Location: index.php");

    exit;
}



// Function Select Data

function ambil_data($query)

{

    global $koneksi;



    $db = [];

    $sql_query = mysqli_query($koneksi, $query);

    while ($q = mysqli_fetch_assoc($sql_query)) {

        array_push($db, $q);
    }

    return $db;
}
