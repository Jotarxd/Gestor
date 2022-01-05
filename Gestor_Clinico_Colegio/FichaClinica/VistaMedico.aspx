<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VistaMedico.aspx.cs" Inherits="Gestor_Clinico_Colegio.FichaClinica.VistaMedico" %>

<!DOCTYPE html>
<html lang="es">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <title>Agenda Medica</title>
    <link href="../Img/rcm-80x36px.png" rel="shortcut icon" type="image/x-icon" />
    <style>
        body{
            left:100%;
            right:100%;
        }
        .left {
          position:absolute;
          padding: 5px;
          float: left;
          width: 22%;
          top:10%;
          bottom:10%;
        }
        .right {
          border: solid 0.5px gray;
          border-radius: 5px;
          left:40%;
          padding: 10px;
          float: right;
          width: 75%;
        }
        .rightbody {
          border: solid 0.5px gray;
          border-radius: 5px;
          top:25%;
          left:25%;
          padding: 10px;
          float: right;
          width: 75%;
        }
        footer{
            width:100%;
            position:absolute;
            margin-top:100%;
        }
        .footer{
            border-top:1px solid #222;
        }
        .post-footer{
            width:100%;
        }
    </style>
</head>
<body>

    <div id="mySidebar" class="w3-sidebar w3-bar-block w3-blue w3-card w3-large w3-animate-left" style="display: none">
        <button class="w3-bar-item w3-button w3-large " onclick="w3_close()">
            &times;</button>
        <a class="w3-bar-item w3-button" href="../Default.aspx">Pagina Principal</a>
        <a class="w3-bar-item w3-button" href="AgendarAtencion.aspx">Ficha</a>
        <a class="w3-bar-item w3-button" href="#">Salir</a>
    </div>

    <div id="main">
         <div class="w3-blue w3-xlarge">
            <button id="openNav" class="w3-button w3-blue w3-large" onclick="w3_open()">&#9776;</button>
            <img alt="Imagen RCMSalud" src="../Img/rcm-80x36px.png">
        </div>

        <script>
            function w3_open() {
                document.getElementById("main").style.marginLeft = "15%";
                document.getElementById("mySidebar").style.width = "15%";
                document.getElementById("mySidebar").style.display = "block";
                document.getElementById("openNav").style.display = 'none';
            }
            function w3_close() {
                document.getElementById("main").style.marginLeft = "0%";
                document.getElementById("mySidebar").style.display = "none";
                document.getElementById("openNav").style.display = "inline-block";
            }
        </script>
        
        <div class="right">
            <header>Menu</header>
            <center>
                <div class="row">
                    <div class="col-2">
                        <img src="../Img/OIP.jpg"   style="width:80%"/>
                        <label>Receta</label>
                    </div>            

                    <div class="col-2">
                        <img src="../Img/OIP.jpg"   style="width:80%"/>
                        <label>Derivacion</label>
                    </div>          

                    <div class="col-2">
                        <img src="../Img/OIP.jpg"   style="width:80%"/>
                        <label>Examenes</label>
                    </div>

                    <div class="col-2">
                        <img src="../Img/OIP.jpg"   style="width:80%"/>
                        <label>Telemedicina</label>
                    </div>

                    <div class="col-2">
                        <img src="../Img/OIP.jpg"   style="width:80%"/>
                        <label>Licencia Medica</label>
                    </div>

                    <div class="col-2">
                        <img src="../Img/OIP.jpg"   style="width:80%"/>
                        <label>Imprimir</label>
                    </div>
                </div>
            </center>
        </div>
 

        <div class="rightbody">
            <header>Datos Pacientes</header>
            <div class="card-body">

                <div class="row">
                    <div class="col-10">
                        <center>
                            <textbox><placeholder>Fecha Atencion</placeholder></textbox>
                            <button type="button" style="background-color:transparent; border:hidden"><img src="../Img/Icono_calendario.png" style="width:2em"/>  </button> 
                        </center>
                    </div>
                </div>

                <div class="row">
                    <div class="col-3">
                        <label>Rut:  </label> <br />
                        <label>Genero: </label>
                    </div>
                    <div class="col-3">
                        <label>Paciente:  </label> <br />
                        <label>Peso: </label>
                    </div>
                    <div class="col-3" >
                        <label>Edad:  </label> <br />
                        <label>Talla: </label>
                    </div>
                </div>

                <div class="row">
                    <div class="col-9" style="border:solid 0.5px gray; border-radius:5px; padding:1em">
                        <header> Motivo Consulta</header>
                        <div style="border:solid 0.5px gray; border-radius:5px; padding:1em ">
                            <img src="../Img/OIP.jpg"  style="width:10%;"/>
                        </div>
                    </div>

                    <div class="col-3" style="border:solid 0.5px gray; border-radius:5px; padding:1em">
                        <header>Historial Medico</header>
                        <div style="border:solid 0.5px gray; border-radius:5px; padding:1em "">
                            <img src="../Img/OIP.jpg"  style="width:10%;"/>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-9" style="border:solid 0.5px gray; border-radius:5px; padding:1em">
                        <header>Detalle</header>
                        <div style="border:solid 0.5px gray; border-radius:5px; padding:1em">
                            <img src="../Img/OIP.jpg"  style="width:10%;"/>
                        </div>
                    </div>
                </div>

                <div class="row">                    
                    <div class="col-9" style="border:solid 0.5px gray; border-radius:5px; padding:1em;">
                        <header style="padding-left:8em">Diagnostico</header>   
                        <div class="row">
                            <div class="col-2" style="align-items:center">
                                <img src="../Img/CIE 10.png" style="width:95%; "/>
                            </div>                                             
                            <div class="col-10" style="border:solid 0.5px gray; border-radius:5px; padding:1em">                            
                                <img src="../Img/OIP.jpg"  style="width:10%;"/>
                            </div>  
                        </div>
                    </div>
                </div>

            </div>
        </div>
           
        <div class="left" style="overflow:scroll;overflow-y:hidden;overflow-x:unset"> 
            <header>
                Agenda
            </header>

            <div style="padding: 10px">
                <img src="../Img/OIP.jpg"  width="60" height="60" style="position:unset; text-align:center"/>  
                <label style="margin-left: 10px; margin:10px; text-align:center"> Nombre / apellido </label> <br /> 
            </div>

            <div style="padding: 10px">
                <img src="../Img/OIP.jpg"  width="60" height="60" style="position:unset; text-align:center"/>
                <label style="margin-left: 10px; margin:10px; text-align:center"> Nombre / apellido </label> <br /> 
            </div>

            <div style="padding: 10px">
                <img src="../Img/OIP.jpg"  width="60" height="60" style="position:unset; text-align:center"/>  
                <label style="margin-left: 10px; margin:10px; text-align:center"> Nombre / apellido </label> <br /> 
            </div>

            <div style="padding: 10px">
                <img src="../Img/OIP.jpg"  width="60" height="60" style="position:unset; text-align:center"/>  
                <label style="margin-left: 10px; margin:10px; text-align:center"> Nombre / apellido </label> <br /> 
            </div>

            <div style="padding: 10px">
                <img src="../Img/OIP.jpg"  width="60" height="60" style="position:unset; text-align:center"/>  
                <label style="margin-left: 10px; margin:10px; text-align:center"> Nombre / apellido </label> <br /> 
            </div>

            <div style="padding: 10px">
                <img src="../Img/OIP.jpg"  width="60" height="60" style="position:unset; text-align:center"/>  
                <label style="margin-left: 10px; margin:10px; text-align:center"> Nombre / apellido </label> <br /> 
            </div>

        </div>       

        <footer class="footer">
            <div class="post-footer">
                <p>&copy; all Copyrigth reserved - Mi aplicación ASP.NET By: Juan Uribe </p>
            </div>
        </footer>

    </div>
</body>
</html>