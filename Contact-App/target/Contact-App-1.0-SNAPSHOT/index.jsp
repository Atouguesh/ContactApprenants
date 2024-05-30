<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Accueil - Gestion de Contacts</title>
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.css" rel="stylesheet">
    
    <style>
        body {
            background-color: #f8f9fa;
            font-family: Arial, sans-serif;
            
        }
        .hero-section {
            background-image: url('att.jpg');
            background-size: cover;
            background-position: center; 
            color: white;
            padding: 100px 0;
            text-align: center;
        }
        .hero-section h1 {
            font-size: 4em;
            margin-bottom: 20px;
        }
        .btn-custom {
            background-color: black;
            color: white;
            padding: 15px 30px;
            font-size: 1.2em;
            border: none;
            border-radius: 10px;
            transition: background-color 0.3s;
        }
        .btn-custom:hover {
            background-color:rosybrown;
        }
        .feature {
            text-align: center;
            padding: 50px 0;
        }
        .feature h2 {
            margin-bottom: 20px;
        }
        .feature i {
            font-size: 3em;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>

    <!-- Hero Section -->
    <div class="hero-section">
        <h1 data-aos="fade-up">Bienvenue sur l'application de gestion de contacts</h1>
        <a href="./Contact.jsp" class="btn btn-custom mt-3" data-aos="fade-up" data-aos-delay="400">Voir Contacts</a>
    </div>
    
    <!-- Features Section -->
    <div class="container my-5">
        <div class="row justify-content-center" data-aos="fade-up">
            <div class="col-md-4 feature" data-aos="fade-up" data-aos-delay="200">
                <i class="fas fa-user-friends"></i>
                <h2>Gérer les Contacts</h2>
                <p>Ajoutez, affichez et supprimez facilement vos contacts.</p>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.js"></script>
    <script>
        AOS.init();
    </script>
</body>
</html>