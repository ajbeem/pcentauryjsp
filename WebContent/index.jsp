<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<!-- meta charset="ISO-8859-1"-->
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>ConsultoriaInformatica</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<!--Dev Mode CSS Toastr-->
<link rel="stylesheet" href="./css/toastr.css">
<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!--Latest VueJavascript-->
<script src="https://cdn.jsdelivr.net/npm/vue@2.5.21/dist/vue.js"></script>

</head>
<body>

	<div class="container" id="main">
		<div class="row">
		<div class="well">
		<h1>Bienvenido a Consultoría Próxima Centaury</h1>
		</div>
		</div>
		<div class="row">
			<div class="col-sm-4">
				<h1>Lista de Posts</h1>
				<!-- Plantilla Reemplazada p>
                            <button class="btn btn-success" v-on:click="obtenerPosts">
                                <span class="glyphicon glyphicon-download-alt"></span>
                                &nbsp;Cargar Posts
                            </button>
                            <ul class="w3-ul w3-card-4">                    
                            <li class="w3-display-container" v-for="item in listaPosts">
                                Si solo se incluye ITEM recupera todo el JSON del Post, 
                                dirige tu solicitud a item.title
                                {{item}}
                                
                                {{item.title}}
                                <span onclick="this.parentElement.style.display='none'" 
                                class="w3-button w3-transparent w3-display-right">&times;
                                </span>
                            </li>
                        </ul>
                        </p-->
				<listadatos v-bind:tipolista="listaPosts"
					v-bind:metodo="obtenerPosts"> </listadatos>
			</div>
			<div class="col-sm-4">
				<h1>Listado de Álbumes</h1>
				<!-- Plantilla Reemplazada p>
                        <button class="btn btn-info" v-on:click="obtenerAlbums">
                            <span class="glyphicon glyphicon-download"></span>
                            &nbsp;Cargar Álbumes
                        </button>
                        <ul class="w3-ul w3-card-4">                    
                        <li class="w3-display-container" v-for="item in listaAlbums">
                            {{item.title}}
                            <span onclick="this.parentElement.style.display='none'" 
                            class="w3-button w3-transparent w3-display-right">&times;
                            </span>
                        </li>
                    </ul>
                </p-->
				<listadatos v-bind:tipolista="listaAlbums"
					v-bind:metodo="obtenerAlbums"> </listadatos>
			</div>
			<!--Plantilla agregada-->
			<div class="col-sm-4">
				<h1>Listado de Usuarios</h1>
				<listausuarios v-bind:tipolista="listaUsuarios"
					v-bind:metodo="obtenerUsuarios"> </listausuarios>
			</div>
		</div>

	</div>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/axios/0.18.0/axios.js"></script>
	<!--ProdMode>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/axios/0.18.0/axios.min.js"></script-->
	<!--JavascriptExclusivoDeLaPagina-->
	<script src="./js/index.js"></script>
	<!--Prod Mode Toastr-->
	<script src="./js/toastr.js"></script>
</body>
</html>