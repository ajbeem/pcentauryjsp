//API Utilizando url place holder
Vue.component('listadatos',{
    props: ['tipolista','metodo'],
    template: `
        <p>
            <button class="btn btn-success" v-on:click="metodo">
                <span class="glyphicon glyphicon-download-alt"></span>
                &nbsp;Cargar Datos
            </button>
            <ul class="w3-ul w3-card-4">                    
                <li class="w3-display-container" v-for="item in tipolista">
                    {{item.title}}
                <span onclick="this.parentElement.style.display='none'" 
                class="w3-button w3-transparent w3-display-right">&times;
                </span>
                </li>
            </ul>
        </p>
    `
});

Vue.component('listausuarios',{
    props: ['tipolista','metodo'],
    template: `
        <p>
            <button class="btn btn-success" v-on:click="metodo">
                <span class="glyphicon glyphicon-download-alt"></span>
                &nbsp;Cargar Datos
            </button>
            <ul class="w3-ul w3-card-4">                    
                <li class="w3-display-container" v-for="item in tipolista">
                    {{item.name}} | {{item.email}}
                <span onclick="this.parentElement.style.display='none'" 
                class="w3-button w3-transparent w3-display-right">&times;
                </span>
                </li>
            </ul>
        </p>
    `
});

let URLusuarios = 'https://jsonplaceholder.typicode.com/users';
let URLusuariosPosts = 'https://jsonplaceholder.typicode.com/posts';
let URLusuariosAlbums = 'https://jsonplaceholder.typicode.com/albums';

let mainFunc= new Vue ({
    el: '#main',
    data : {
        listaUsuarios: [],
        listaPosts: [],
        listaAlbums: []
    },
    methods: {
        obtenerUsuarios: function(){
            toastr.info("Cargando Datos de la URL", "Espera...", {
                "progressBar": true,
                "timeOut": "700",
        });
            /*toastr.options.progressBar = true;
            toastr.options.closeDuration = 100;
            toastr.info("Cargando Datos de la URL", "Espera...");*/
            axios.get(URLusuarios).then(response=>{
                this.listaUsuarios = response.data;
            });
        },
        obtenerPosts: function(){
            toastr.info("Cargando Datos de la URL", "Espera...", {
                "progressBar": true,
                "timeOut": "700",
        });
            /*toastr.options.progressBar = true;
            toastr.options.closeDuration = 100;
            toastr.info("Cargando Datos de la URL", "Espera...");*/
            axios.get(URLusuariosPosts).then(response=>{
                this.listaPosts = response.data;
            });
        },
        obtenerAlbums: function(){
            toastr.success("Cargando Datos de la URL", "Espera...", {
                "progressBar": true,
                "timeOut": "700",
        });
            /*toastr.options.progressBar = true;
            toastr.options.closeDuration = 100;
            toastr.info("Cargando Datos de la URL", "Espera...");*/
            axios.get(URLusuariosAlbums).then(response=>{
                this.listaAlbums = response.data;
            });
        }

    },
    computed:{
        buscarDatos: function () {
            return this.listaUsuarios.filter((item)=>item.name.includes(this.nombre));
        }
    }
});