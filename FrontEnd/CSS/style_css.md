

body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    background:linear-gradient(45deg,blueviolet,lightgreen);
    font-size: 125%;
    
}

.nav-desktop, .nav-movil, .nav-ipad {
    background:linear-gradient(45deg,blueviolet,lightgreen);
    overflow: hidden;
    padding: 10px 0;
    display: none;
}

.nav-desktop .boton, .nav-movil .boton, .nav-ipad .boton {
    flex: 1;
    margin: 5px;
    padding: 10px 20px;
    background-color: #6be0bb;
    color: rgb(88, 72, 72);
    border: none;
    cursor: pointer;
    text-align: center;
    transition: background-color 0.3s ease;
    width: 100%;
    font-size: 150%;
}

.nav-desktop .boton:hover, .nav-movil .boton:hover, .nav-ipad .boton:hover {
    background-color: #ffffff;
    color: black;
    width: 100%;
}

.caja {
    display: flex;
    flex-wrap: wrap;
    justify-content: space-around;
    padding: 10px;
}

.card1 {
    background-color: #fff2eb;
    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
    transition: 0.3s;
    border-radius: 5px;
    margin: 10px;
    width: 100%;
    max-width: 300px;
}
.card2 {
    background-color:#af87bb;
    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
    transition: 0.3s;
    border-radius: 5px;
    margin: 10px;
    width: 100%;
    max-width: 300px;
}
.card3 {
    background-color: #b6aef1;
    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
    transition: 0.3s;
    border-radius: 5px;
    margin: 10px;
    width: 100%;
    max-width: 300px;
}
.card4 {
    background-color: #f4b9e1;
    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
    transition: 0.3s;
    border-radius: 5px;
    margin: 10px;
    width: 100%;
    max-width: 300px;
}
.card5 {
    background-color: #aec3f9;
    color: rgb(9, 9, 9);
    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
    transition: 0.3s;
    border-radius: 5px;
    margin: 10px;
    width: 100%;
    max-width: 300px;
}
.card6 {
    background-color: #f4c6c6;
    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
    transition: 0.3s;
    border-radius: 5px;
    margin: 10px;
    width: 100%;
    max-width: 300px;
}

.card1:hover,.card2:hover,.card3:hover,.card4:hover,.card5:hover,.card6:hover {
    box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.5);
}

img {
    border-radius: 5px 5px 0 0;
    width: 100%;
    height: auto;
}

.container {
    padding: 16px;
}

footer {
    margin-top: 10px;
}

footer a {
    text-decoration: coral;
    color: rgb(0, 119, 255);
}

/*Laptop*/
@media (min-width: 1025px) {
    .nav-desktop {
        display: flex;
        justify-content: space-around;
    }
    .caja {
        flex-wrap: nowrap;
        justify-content: space-between;
    }
    .card {
        width: 15%;
        margin: 10px;
        font-size: 150%;
    }
}

@media (min-width: 768px) and (max-width: 1024px) {
    .nav-ipad {
        display: flex;
        justify-content: space-around;
    }
    .caja {
        flex-wrap: wrap;
        justify-content: space-around;
    }
    .card {
        width: 30%;
        margin: 10px;
        font-size: 150%;
    }
}


@media (max-width: 767px) {
    .nav-movil {
        display: flex;
        flex-direction: column;
        align-items: center;
    }
    .caja {
        flex-direction: column;
        align-items: center;
    }
    .card {
        width: 80%;
        font-size: 150%;
    }
}


| Responsable | Puesto | Contacto | Observaciones |
|-------------|--------|----------|---------------|
|Marco Antonio Ramirez Marquez|@MTI-Marco|Líder de desarrollo FrontEnd|✅ Revisado y aprobado.|
|Guadalupe Idai Vargas Galindo|@IdaiVG|Desarrollador FrontEnd|❌Sin revisión..|
