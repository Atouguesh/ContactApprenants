<%-- 
    Document   : Contact
    Created on : 28 mai 2024, 16:36:04
    Author     : assetou.diarra1
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
    <head>
        <title>Contacts</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        
        <style>
            body {
                background-image: url('chemin/vers/votre/image.jpg');
                background-size: cover; /* Ajuster la taille de l'image pour couvrir l'ensemble de la page */
                background-repeat: no-repeat; /* Empêcher la répétition de l'image */
            }

            /* Style personnalisé pour le bouton "Ajouter" */
            .btn-ajouter {
                background-color: #4CAF50; /* Couleur de fond */
                color: white; /* Couleur du texte */
                padding-right: 17px; /* Espacement à l'intérieur du bouton */
                border-right-width: 15px;
                border-left-width: 15px;
                padding-left: 17px;
                /* Suppression de la bordure */
                border-radius: 10px; /* Coins arrondis */
                cursor: pointer; /* Curseur pointeur au survol */
                text-align: center; /* Alignement du texte */
                text-decoration: none; /* Suppression de la décoration du texte */
                display: inline-block; /* Affichage en ligne */
                font-size: 40px; /* Taille de la police */
                transition-duration: 0.4s; /* Durée de la transition */
            }

            /* Effet de survol pour le bouton "Ajouter" */
            .btn-ajouter:hover {
                background-color: #45a049; /* Couleur de fond au survol */
            }
        </style>
    </head>
    <body class="bg-light p-4">
        <div class="container">
            <h1 class="text-center mb-5">Liste des contacts</h1>
            <div class="table-responsive">
                <table class="table table-bordered table-striped">
                    <thead class="table-dark">
                        <tr>
                            <th scope="col">Nom</th>
                            <th scope="col">Numéro de Téléphone</th>
                            <th scope="col">Ville</th>
                            <th scope="col">Compétence</th>
                            <th scope="col">Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="contact" items="${contacts}">
                            <tr>
                                <td>${contact.name}</td>
                                <td>${contact.numberoftel}</td>
                                <td>${contact.country}</td>
                                <td>${contact.job}</td>
                                <td>
                                    <button type="button" class="btn btn-danger" onclick="confirmDelete(${contact.id})">Supprimer</button>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
            <h2 class="text-center mt-5 mb-3">Ajouter un nouveau contact</h2>
            <form action="contacts" method="post" class="bg-white p-4 rounded shadow-sm">
                <!-- Vos champs de formulaire ici -->
                
                <div class="mb-3">
                    <label for="name" class="form-label">Nom:</label>
                    <input type="text" id="name" name="name" class="form-control" required>
                </div>
                <div class="mb-3">
                    <label for="numberoftel" class="form-label">Numéro de Téléphone:</label>
                    <input type="text" id="numberoftel" name="numberoftel" class="form-control" required>
                </div>
                <div class="mb-3">
                    <label for="country" class="form-label">Ville:</label>
                    <input type="text" id="country" name="country" class="form-control" required>
                </div>
                <div class="mb-3">
                    <label for="job" class="form-label">Compétence:</label>
                    <input type="text" id="job" name="job" class="form-control" required>
                </div>
                <button type="submit" class="btn btn-danger">Ajouter </button>
            </form>
        </div>
                    
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
        
        <script>
            function confirmDelete(contactId) {
                if (confirm("Êtes-vous sûr de vouloir supprimer ce contact ?")) {
                    // Envoyer une requête AJAX au serveur pour supprimer le contact
                    var xhr = new XMLHttpRequest();
                    xhr.open("DELETE", "contacts?contactId=" + contactId, true); // Remplacez "deleteContact" par l'URL de votre servlet ou contrôleur qui gère la suppression de contact
                    xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
                    xhr.onreadystatechange = function () {
                        if (xhr.readyState === 4) {
                            console.log("Requête envoyée. Statut:", xhr.status);
                            if (xhr.status === 200) {
                                // La suppression a réussi, actualisez la page
                                location.reload();
                            } else {
                                console.error("Erreur lors de la suppression du contact. Réponse du serveur:", xhr.responseText);
                            }
                            // La suppression a réussi, actualisez la page
                            
                        }
                    };
                    xhr.send();
                }
            }

        </script>
    </body>
</html>
