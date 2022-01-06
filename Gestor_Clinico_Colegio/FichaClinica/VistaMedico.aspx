<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VistaMedico.aspx.cs" Inherits="Gestor_Clinico_Colegio.FichaClinica.VistaMedico" %>

<!DOCTYPE html>
<html lang="es">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"/>
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
          width: 20%;
          top:10%;
          bottom:10%;
        }
        .right {
          position:relative;
          border: solid 0.5px gray;
          border-radius: 5px;
          margin-top:10px;
          margin-right:10px;
          top:10%;
          padding: 10px;
          float: right;
          width: 72%;
        }
        .rightbody {
          position:relative;
          border: solid 0.5px gray;
          border-radius: 5px;
          top:40%;
          margin-right:1%;
          padding: 10px;
          float: right;
          width: 72%;
        }
        @media screen and (max-width:200px){
            .right{
                width:100%;
                height:auto;
                position:relative;
            }
        }
        .footer{
            width:100%;
            position:fixed;
            bottom:0;
            left:0;
            text-align:center; 
            background-color:dodgerblue;
            overflow:auto;
        }
        #item:hover{
            background-color:dodgerblue;
            border-radius: 5px;
        }
        #menuitem:hover{
            background-color:dodgerblue;
            border-radius: 5px;
            border-width:thin;
        }
    </style>

</head>
<body>

    <div id="mySidebar" class="w3-sidebar w3-bar-block w3-blue w3-card w3-large w3-animate-left" style="display:none">
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
        
        <div style="margin-top:1%"> 
            <header style="margin-left:1%" >
                Agenda
            </header>
            <div class="left" style="margin-top:1%;overflow:scroll;overflow-y:no-display">
                <div id="item" style="padding: 10px">
                    <img src="../Img/user-icon.png"  width="60" height="60" style="position:unset; text-align:center"/>  
                    <label style="margin-left: 10px; margin:10px; text-align:center;text-rendering:geometricPrecision"> Nombre / apellido </label> <br /> 
                </div>

                <div id="item" style="padding: 10px">
                    <img src="../Img/user-icon.png"  width="60" height="60" style="position:unset; text-align:center"/>  
                    <label style="margin-left: 10px; margin:10px; text-align:center;text-rendering:geometricPrecision"> Nombre / apellido </label> <br /> 
                </div>

                <div id="item" style="padding: 10px">
                    <img src="../Img/user-icon.png"  width="60" height="60" style="position:unset; text-align:center"/>  
                    <label style="margin-left: 10px; margin:10px; text-align:center;text-rendering:geometricPrecision"> Nombre / apellido </label> <br /> 
                </div>

                <div id="item" style="padding: 10px">
                    <img src="../Img/user-icon.png"  width="60" height="60" style="position:unset; text-align:center"/>
                    <label style="margin-left: 10px; margin:10px; text-align:center;text-rendering:geometricPrecision"> Nombre / apellido </label> <br /> 
                </div>

                <div id="item" style="padding: 10px">
                    <img src="../Img/user-icon.png"  width="60" height="60" style="position:unset; text-align:center"/>  
                    <label style="margin-left: 10px; margin:10px; text-align:center;text-rendering:geometricPrecision"> Nombre / apellido </label> <br /> 
                </div>

                <div id="item" style="padding: 10px">
                    <img src="../Img/user-icon.png"  width="60" height="60" style="position:unset; text-align:center"/>  
                    <label style="margin-left: 10px; margin:10px; text-align:center;text-rendering:geometricPrecision"> Nombre / apellido </label> <br /> 
                </div>

                <div id="item" style="padding: 10px">
                    <img src="../Img/user-icon.png"  width="60" height="60" style="position:unset; text-align:center"/>  
                    <label style="margin-left: 10px; margin:10px; text-align:center"> Nombre / apellido </label> <br /> 
                </div>

                <div id="item" style="padding: 10px">
                    <img src="../Img/user-icon.png"  width="60" height="60" style="position:unset; text-align:center"/>  
                    <label style="margin-left: 10px; margin:10px; text-align:center"> Nombre / apellido </label> <br /> 
                </div>
            </div>
        </div>       

        <div class="right">
            <header>Menu</header>
            <center>
                <div class="row" style="overflow-x:scroll">
                    <div id="menuitem" class="col-sm-2 col-md-2 col-lg-2">
                        <img src="../Img/receta.png" style="width:50px" /> <br />
                        <textbox>Receta</textbox>
                    </div>         

                    <div id="menuitem" class="col-sm-2 col-md-2 col-lg-2">
                        <img src="../Img/derivacion.png" style="width:50px"/>  <br />
                        <textbox >Derivacion</textbox>
                    </div>          

                    <div id="menuitem" class="col-sm-2 col-md-2 col-lg-2">
                        <img src="../Img/examenes.png"   style="width:50px"/> <br />
                        <textbox>Examenes</textbox>
                    </div>

                    <div id="menuitem" class="col-sm-2 col-md-2 col-lg-2">
                        <img src="../Img/telemedicina.png"   style="width:50px"/> <br />
                        <textbox>Telemedicina</textbox>
                    </div>

                    <div id="menuitem" class="col-sm-2 col-md-2 col-lg-2">
                        <img src="../Img/Licencia.png"   style="width:50px"/> <br />
                        <textbox>Licencia Medica</textbox>
                    </div>

                    <div id="menuitem" class="col-sm-2 col-md-2 col-lg-2">
                        <img src="../Img/imprimir.png"   style="width:50px"/> <br />
                        <textbox>Imprimir</textbox>
                    </div>
                </div>
            </center>
        </div>
 

        <div class="rightbody" style="margin-bottom:5%" >
            <header>Datos Pacientes</header>
            <div class="card-body" style="margin-left:5%" >

                <div class="row">
                    <center>
                        <div class="col-sm-1 col-md-1 col-lg-1">
                                <textbox>Fecha Atencion:</textbox>
                                <button type="button" style="background-color:transparent; border:hidden"><img src="../Img/Icono_calendario.png" style="width:2em"/></button> 
                        </div>
                    </center>
                </div>

                <div class="row">
                    <div class="col-sm-3 col-md-3 col-lg-3">
                        <label>Rut:</label><input id="Txt_rut" type="text" style="width:90%"/><br />
                        <label>Genero: </label><input id="Txt_genero" type="text" style="width:90%"/>
                    </div>
                    <div class="col-sm-3 col-md-3 col-lg-3">
                        <label>Paciente:  </label> <input id="Txt_paciente" type="text" style="width:90%"/><br />
                        <label>Peso: </label><input id="Txt_peso" type="text"style="width:90%"/>
                    </div>
                    <div class="col-sm-3 col-md-3 col-lg-3">
                        <label>Edad:  </label><input id="Txt_edad" type="text"style="width:90%" /> <br />
                        <label>Talla: </label><input id="Txt_talla" type="text" style="width:90%" />
                    </div>
                </div>

                <div class="row">
                    <div class="col-sm-8 col-md-8 col-lg-8" style="border:solid 0.5px gray; border-radius:5px; padding:1em; margin:1%">
                        <header> Motivo Consulta</header>
                        <textarea style="border:solid 0.5px gray;width:98%; border-radius:5px;border-color:gray; padding:1em; text-size-adjust:auto"></textarea>
                    </div>

                    <div class="col-sm-3 col-md-3 col-lg-3" style="border:solid 0.5px gray; border-radius:5px; padding:1em;margin:1%; width:135px;">
                        <header>Historial Medico</header>
                        <textarea style="border:solid 0.5px gray;width:100% ; border-radius:5px;border-color:gray; padding:1em  ""></textarea>
                    </div>
                </div>

                <div class="row">
                    <div class="col-sm-11 col-md-11 col-lg-11" style="border:solid 0.5px gray; border-radius:5px; padding:1em; margin:1%">
                        <header>Detalle</header>
                        <textarea style="border:solid 0.5px gray;width:100%;border-radius:5px;border-color:gray; padding:1em"></textarea>
                    </div>
                </div>

                <div class="row">                     
                    <div id="item" class="col-sm-3 col-md-3 col-lg-3">
                        <img src="../Img/CIE 10.png" style="width:100%; "/>
                    </div>
                       
                    <div class="col-sm-9 col-md-9 col-lg-9" style="border:solid 0.5px gray; border-radius:5px; padding:1em; margin:1%">
                        <header">Diagnostico</header>                        
                        <textarea style="border:solid 0.5px gray;width:100%; border-radius:5px; border-color:gray;padding:1%"></textarea> 
                    </div>
                </div>

            </div>
        </div>
           
        <div class="footer">
            <p>&copy; all Copyrigth reserved - Mi aplicación ASP.NET By: Juan Uribe </p>
        </div>

    </div>
</body>
</html>