<html>
  <head>
    <meta charset="UTF-8">
    <title>Inicio de sesión</title>
      
    <!-- Bootstrap 3.3.2 -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
      <link href="Imagenes/canasta.png" rel="icon">
    <!-- Font Awesome Icons -->
    <link href="assets/plugins/font-awesome-4.6.3/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
  
    <link rel="stylesheet" href="CSS/Style.css">
  </head>
  <body>
      
      
      
    <div class="login-container">
          
        <?php 
        //Está es la manera de preguntar
        //si una variable esta vacia o llena
        if (empty($_GET['alerta']))
        {
           echo "";    
        }
        else
        {
            if ($_GET['alerta']==1)// si es devuelto 1: es porque el usuario o clave estan erroneas
            {
                echo "<div class='alert alert-primary' style='color:white;'>  
                    <a link type='button' class='close' href='http://localhost/AAAPolimercado_Entregafinal/Login.php'>&times;
                    </a>
                    <h4 style='color:white;' > <i class='icon fa fa-times-circle'></i> Error al entrar!</h4>
                   Usuario o contraseña es incorrecta, vuelva a verificar usuario y contraseña.
                  </div>";
            }
            else
            {
                if ($_GET['alerta']==2)// Si la alerta es 2: es porque se ha salido del dashboard
                {
                    echo "<div class='alert alert-success alert-dismissable'>
                    <button type='button' class='close' data-dismiss='alert' aria-hidden='true'>&times;</button>
                        <h4> <i class='icon fa fa-check-circle'></i> Exito!!</h4>
                      Has salido con éxito.
                      </div>";
                }
                
            }
        }?>
        
        
        <br>
        <br>
        <br>
        <br>
        <br>
        
      <h1>AAA POLIMERCADO</h1>
        <br>
        <h3 style="text-align: center; color:white;">Administrador</h3> 
      <form action="sesion.php" method=POST >
        <input type="text" name="user" placeholder="Usuario">
        <input type="password" name="pass" placeholder="Contraseña">
        <button type="submit">Ingresar</button>
        <br>
        <br>
        <br>
        <br>
        <h3 style="text-align: center; color:white;">Compra Usuarios</h3> 
        <input type="button" onclick="location.href='http://localhost/AAAPolimercado_Entregafinal/pagina%20inicial%20polimercado.html';" value="Categorias" />


      </form>
    </div>
    <script src="script.js"></script>
  </body>
</html>