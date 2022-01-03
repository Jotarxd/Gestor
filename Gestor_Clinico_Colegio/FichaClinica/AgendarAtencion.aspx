<%@ Page Title="Agendar Atencion" Language="C#" AutoEventWireup="true"  CodeBehind="AgendarAtencion.aspx.cs" Inherits="Gestor_Clinico_Colegio.FichaClinica.AgendarAtencion" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="../Content/Site.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
    <title>RCM Salud</title>
    <link href="../Img/rcm-80x36px.png" rel="shortcut icon" type="image/x-icon" />
</head>
<body>
    <div id="mySidebar" class="w3-sidebar w3-bar-block w3-blue w3-card w3-animate-left" style="display: none">
        <button class="w3-bar-item w3-button " onclick="w3_close()">
            &times;
        </button>
        <a class="w3-bar-item w3-button" href="../Default.aspx">Ficha medica</a>
        <a class="w3-bar-item w3-button" href="VistaMedico.aspx">Agenda</a>
        <a class="w3-bar-item w3-button" href="#">Link 3</a>
    </div>

    <!-- Barra de horizontal -->


    <div id="main">

        <div class="w3-blue ">
            <button id="openNav" class="w3-button w3-blue " onclick="w3_open()">&#9776;</button>
            <img alt="Imagen RCMSalud" src="Img/rcm-80x36px.png">
        </div>

        <div class="w3-container">
            Contenido Capas 
                    de moverse cuando 
                    el sidebar se abre....................................
               
                    <hr />
            <footer>
                <p>&copy; all Copyrigth reserved <%: DateTime.Now.Year %> - Mi aplicación ASP.NET By: Juan Uribe </p>
            </footer>
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
       
        <form runat="server">
            
            <div class="container align-self-lg-center">

              <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Ficha</button>
                <div class="modal fade" id="myModal" role="dialog">
                    <div class="modal-dialog">
                        <div class="modal-content">

                            <div class="modal-header">
                              <button type="button" class="close" data-dismiss="modal">&times;</button>
                              <h4 class="modal-title">Ficha</h4>
                            </div>

                            <div class="modal-body">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col">                                
                                            <div class="form-row">
                                                <asp:Label ID="Fecha" runat="server" Text="Fecha"></asp:Label>
                                                :<asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" OnSelectionChanged="Calendar1_SelectionChanged" Width="350px">
                                                    <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                                                    <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                                                    <OtherMonthDayStyle ForeColor="#999999" />
                                                    <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                                                    <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                                                    <TodayDayStyle BackColor="#CCCCCC" />
                                                </asp:Calendar>
                                                <asp:TextBox ID="Txt_calendario" runat="server"></asp:TextBox>                                        
                                                <asp:ImageButton ID="ImageButton1" CssClass="clearfix" runat="server" Height="25px" ImageUrl="~/Img/Icono_calendario.png" OnClick="ImageButton1_Click1" Width="28px" />
                                        
                                            </div><br />
                                            <div class="form-row">
                                                <asp:Label ID="Rg" runat="server" Text="RG"></asp:Label>
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp
                                                <asp:TextBox ID="TextRg" runat="server" Width="195px" Height="25"></asp:TextBox>
                                            </div><br />
                                            <div class="form-row">
                                                <asp:Label ID="Nombre" runat="server" Text="Nome"></asp:Label>
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp
                                                <asp:TextBox ID="TextNombre" runat="server" Width="195px" Height="25"></asp:TextBox>
                                            </div><br />
                                            <div class="form-row">
                                                <asp:Label ID="Telefono" runat="server" Text="Telefono"></asp:Label>
                                                &nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:TextBox ID="TextTelefono" runat="server" Width="195px" Height="25"></asp:TextBox>
                                            </div><br />
                                            <div class="form-row">
                                                <asp:Label ID="Servicio" runat="server" Text="Servicio"></asp:Label>
                                                &nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:DropDownList ID="DropDownListServicio" runat="server" Width="195px" Height="25"></asp:DropDownList>
                                            </div><br />
                                        </div>
                            
                                        <div class="col">
                                            <div class="d-grid grap-2-col-6 mix-auto">
                                                <div class="form-row">
                                                    <asp:Label ID="Hora" runat="server" Text="Hora"></asp:Label>
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    &nbsp
                                                    <asp:TextBox ID="TextHora" runat="server" Width="195px" Height="25"></asp:TextBox>
                                                </div><br />
                                                <div class="form-row">
                                                    <asp:Label ID="Cp" runat="server" Text="CP"></asp:Label>
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp
                                                    &nbsp;&nbsp
                                                    <asp:TextBox ID="TextCp" runat="server" Width="195px" Height="25"></asp:TextBox>
                                                </div><br />
                                                <div class="form-row">
                                                    <asp:Label ID="SobreNom" runat="server" Text="Sobre Nome"></asp:Label>
                                                    &nbsp
                                                    <asp:TextBox ID="TextSobreNom" runat="server" Width="195px" Height="25" OnTextChanged="TextSobreNom_TextChanged"></asp:TextBox>
                                                </div><br />
                                                <div class="form-row">
                                                    <asp:Label ID="Email" runat="server" Text="E-mail"></asp:Label>
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp
                                                    <asp:TextBox ID="TextEmail" runat="server" Width="195px" Height="25"></asp:TextBox>
                                                </div><br />
                                                <div class="form-row">
                                                    <asp:Label ID="Profesional" runat="server" Text="Profissional"></asp:Label>
                                                    &nbsp;&nbsp;&nbsp
                                                    <asp:DropDownList ID="DropDownListProfesional" runat="server" Width="195px" Height="25"></asp:DropDownList>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                    </div>
                                    <div>
                                </div>
                            </div>

                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                                <button type="button" class="btn btn-primary">Guardar</button> 
                             </div> 
                        </div>
                    
                    </div>
                </div>
            </div>
        </form>

        <hr/>
        <footer>
            <p>&copy; all Copyrigth reserved <%: DateTime.Now.Year %>- Mi aplicación ASP.NET By: Juan Uribe </p>
        </footer>        
    </div>
</body>
</html>


