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
          width: 23%;
          top:10%;
          bottom:10%;
        }
        div.scrollmenu {
          overflow: auto;
          white-space: nowrap;
        }
        div.scrollmenu a {
          display: inline-block;
          color: black;
          text-align: center;
          padding: 14px;
          text-decoration: none;
        }
        .scrollmenu {
          position:relative;
          border: solid 0.5px gray;
          border-radius: 5px;
          margin-top:8px;
          margin-right:1%;
          margin-bottom:8px;
          top:10%;
          padding:20px;
          float: right;
          width: 72%;
        }
        .rightbody {
          position:relative;
          border: solid 0.5px gray;
          border-radius: 5px;
          top:40%;
          margin-right:1%;
          padding: 20px;
          float: right;
          width: 72%;
        }
        @media screen and (max-width:200px){
            .right,.rightbody{
                width:100%;
                height:auto;
                position:relative;
            }
        }
        @media screen and (max-width:200px){
            .left{
                width: 130px;
            }
        }
        .footer{
            width:100%;
            position:sticky;
            bottom:0;
            left:0;
            text-align:center; 
            background-color:cornflowerblue;
            overflow:auto;
        }
        #item:hover{
            background-color:dodgerblue;
            border-radius: 5px;
            cursor:pointer;
        }
        #menuitem:hover{
            cursor:pointer;
        }
    </style>

</head>
<body>

    <div id="mySidebar" class="w3-sidebar w3-bar-block w3-card w3-large w3-animate-left" style="background-color:cornflowerblue ;display:none">
        <button class="w3-bar-item w3-button w3-large " onclick="w3_close()">
            &times;</button>
        <a class="w3-bar-item w3-button" href="../Default.aspx">Pagina Principal</a>
        <a class="w3-bar-item w3-button" href="AgendarAtencion.aspx">Ficha</a>
        <a class="w3-bar-item w3-button" href="../Login/Login.aspx">Salir</a>
    </div>

    <div id="main">
         <div class="w3-xlarge" style="background-color:cornflowerblue">
            <button id="openNav" class="w3-button w3-blue w3-large" style="background-color:cornflowerblue" onclick="w3_open()">&#9776;</button>
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
            <div class="left" style="margin-top:1%;overflow-y:scroll;overflow-x:hidden">
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

        <div class="scrollmenu">
            <header>Menu</header>
            <center>
                <a href="#">
                    <img id="menuitem" src="../Img/receta.png" style="width:50px" /> <br />
                    <textbox>Receta</textbox>
                </a>

                <a href="#">           
                    <img id="menuitem" src="../Img/derivacion.png" style="width:50px"/>  <br />
                    <textbox >Derivacion</textbox>
                </a>

                <a href="#">      
                    <img id="menuitem" src="../Img/examenes.png"   style="width:50px"/> <br />
                    <textbox>Examenes</textbox>
                </a> 
            
                <a href="#">
                    <img id="menuitem" src="../Img/telemedicina.png"   style="width:50px"/> <br />
                    <textbox>Telemedicina</textbox>
                </a>

                <a href="#">
                    <img id="menuitem" src="../Img/Licencia.png"   style="width:50px"/> <br />
                    <textbox>Licencia Medica</textbox>
                </a>                    

                <a href="#">
                <img id="menuitem" src="../Img/imprimir.png"   style="width:50px"/> <br />
                <textbox>Imprimir</textbox>
                </a>
            </center>
        </div>

        <div class="rightbody" style="margin-bottom:5%" >
            <header>Datos Pacientes</header>
            <div class="card-body" style="margin-left:5%" >

                <div class="row">
                    <center>
                        <div class="col-sm-9 col-md-9 col-lg-9">
                            <textbox>Fecha Atencion:</textbox>
                            <input type="date"/>
                        </div>
                    </center>
                </div>

                <div class="row" style="margin-bottom:8px">
                    <div class="col-sm-3 col-md-3 col-lg-3">
                        <label style="width:100px">Rut:</label><input id="Txt_rut" type="text" style="width:90%"/><br/>
                        <label>Genero: </label><input id="Txt_genero" type="text" style="width:90%"/>
                    </div>
                    <div class="col-sm-3 col-md-3 col-lg-3">
                        <label>Paciente:  </label> <input id="Txt_paciente" type="text" style="width:90%"/>
                        <label>Peso: </label><input id="Txt_peso" type="text"style="width:90%"/>
                    </div>
                    <div class="col-sm-3 col-md-3 col-lg-3">
                        <label>Edad:  </label><input id="Txt_edad" type="text"style="width:90%" /> <br />
                        <label>Talla: </label><input id="Txt_talla" type="text" style="width:90%" />
                    </div>
                </div>

                <div class="row">
                    <div class="col-sm-9 col-md-9 col-lg-9" style="border:solid 0.5px gray; border-radius:5px; padding:1em; margin:1%">
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
                    <img  src="../Img/CIE 10.png" style="image-rendering:optimizeQuality;width:85px;height:85px" />
                    <div class="col-sm-10 col-md-10 col-lg-10" style="border:solid 0.5px gray; border-radius:5px; padding:1em">
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