<template>
  <!-- <div class="overlay"></div> -->
  <div class="full-page">
    <main>
      <div class="container-fluid">
        <div class="row nav">
          <nav class="navbar">
            <div class="logo col-12">
              <div class="col-2">
                <router-link to="/" class="rlink"><img src="/vect-white.svg" alt="Logo" class="nav-logo"></router-link>
              </div>
              <div class="col-4">
                <h1>
                  <router-link to="/" class="rlink">Oscar Spiaggia</router-link>
                </h1>
              </div>
              <div class="col-3"></div>
              <div class="col-2">
                <button class="btn navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarToggleExternalContent" aria-controls="navbarToggleExternalContent" aria-expanded="false" aria-label="Toggle navigation">
                  <i class="menu bi bi-list"></i>
                </button>
              </div>
              <div class="col-2"></div>
            </div>
          </nav>
          <div class="container">
            <div class="col-12">
              <hr>
              <div class="collapse text-center m-2" id="navbarToggleExternalContent">
                <h4 class="text-white">Menù bar</h4>
                <div class="collapsed-navbar text-white p-2">
                  <div class="mario">
                    <div class="links">
                      <router-link to="/rist" class="routerlink">Ristorante</router-link>
                      <router-link to="/coffee" class="routerlink">Caffetteria</router-link>
                      <router-link to="/wine" class="routerlink">Cantina</router-link>
                      <router-link to="/cocktail" class="routerlink">Cocktail</router-link>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <RouterView />
    </main>
  </div>
</template>

<script lang="ts">
import { defineComponent } from "vue";
import { RouterLink } from 'vue-router';

export default defineComponent({
  methods: {
  },
  mounted() {
    const routerLinks = document.querySelectorAll('.routerlink');

    routerLinks.forEach(link => {
      link.addEventListener('click', () => {
        const navbarToggle = document.getElementById('navbarToggleExternalContent');

        if (navbarToggle?.classList.contains('show')) {
          navbarToggle?.classList.remove('show');
        }
      });
    });
  }
});
</script>

<style scoped>
/* @import url("https://fonts.googleapis.com/css2?family=Montserrat:wght@300&display=swap"); */
@import url('https://fonts.googleapis.com/css2?family=Comfortaa:wght@300..700&display=swap');

html {
  scroll-behavior: smooth;
}

* {
  font-family: "Comfortaa", sans-serif;
  font-weight: bold;
  color: white;
  -webkit-user-select: none; /* Safari */
  -ms-user-select: none; /* IE 10 and IE 11 */
  user-select: none; /* Standard syntax */
}

.container {
  z-index: 3;
  margin-bottom: 25px;
}

hr {
  border: 1px solid white;
  border-radius: 20px;
  box-shadow: rgb(29, 44, 59) 0px 10px 20px -10px;
}

.full-page {
  position: relative; /* Posiziona l'overlay in modo relativo rispetto a questo elemento */
  height: 100vh;
  overflow-y: auto;
  background: linear-gradient(to bottom, rgba(14, 14, 14, 0.233), rgba(22, 22, 22, 0.13)), url(/oscar.jpg);
  background-size: cover;
  background-repeat: repeat;
  background-attachment: fixed;
  z-index: 1;
  filter: opacity(95%);
}

.navbar {
  padding-left: 20px;
  padding-top: 40px;
  min-width: 100%;
  justify-content: center;
  align-items: center;
  z-index: 3;
}

h1 {
  margin: 0;
  padding: 8px;
  font-size: 22px;
  text-shadow: #ffffff 1px 0 10px;
}

h1>.rlink {
  font-weight: 100;
}

h4{
  text-shadow: 2px 2px #2f59a6;
}

.logo {
  display: flex;
  align-items: center;
  justify-content: space-between;
  margin: auto;
  padding: 0;
}

.nav-logo {
  width: 55px;
  filter: grayscale(0%);
}

i {
  font-size: 40px;
  padding: 0;
}

.button {
  padding: 0px;
}

.btn {
  padding: 0;
}

.btn:focus {
  box-shadow: 0 0 0 0.2rem rgba(235, 235, 235, 0.25);
}

.collapsed-navbar {
  margin-left: auto;
  margin-right: auto;
  margin-top: 6px;
  width: 100%;
  
}

.overlay {
  position:relative; /* Posiziona l'overlay in modo assoluto */
  left: 3%;
  top: 2%;
  width: 94%;
  height: 96%;
  z-index: 2; /* Assicura che l'overlay sia sopra il contenuto */
  background-color: rgba(255, 255, 255, 0.356); /* Sfondo semi-trasparente */
  border-radius: 20px;
}

.mario {
  justify-content: center;
}

.links {
  display: grid;
  grid-template-columns: repeat(2, 1fr);
  gap: 10px;
}

.links>.routerlink {
  border: 1px solid #ffffff;
  border-radius: 15px;
  padding: 6px;
  box-shadow: rgb(29, 44, 59) 0px 10px 20px -10px;
  background-color: rgba(255, 255, 255, 0.253); /* Sfondo semi-trasparente */
  font-size: bolder;
  background: rgba(255, 255, 255, 0.2);
  backdrop-filter: blur(8px);
  font-size: 22px;
  color: #fdfeff;
  text-shadow: #ffffff 1px 0 6px;
  z-index: 3;
  font-weight: 100;
  transition: all 0.1s ease-in-out;
}

.rlink {
  text-decoration: none;
  color: white;
}

.routerlink:hover, .rlink:focus {
  text-decoration: none;
  transform: scale(1.06);
}

</style>
