<template>
  <div class="full-page">
    <div class="overlay"></div> <!-- Aggiungi un overlay semi-trasparente -->
    <main>
      <div class="container-fluid">
        <div class="row nav">
          <nav class="navbar">
            <div class="logo col-12">
              <div class="col-2">
                <img src="/oscarlogo.png" alt="Logo" class="nav-logo">
              </div>
              <div class="col-4">
                <h1>Oscar Spiaggia</h1>
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
              <div class="collapse text-center m-2" id="navbarToggleExternalContent">
                <h4 class="text-white">Menù bar</h4>
                <div class="collapsed-navbar text-white p-2">
                  <div class="mario">
                    <div class="links">
                      <Routerlink to="/cocktail">Cocktail</Routerlink>
                      <Routerlink to="/wine">Cantina</Routerlink>
                      <Routerlink to="/coffe">Caffè</Routerlink>
                      <Routerlink to="/liquors">Liquori</Routerlink>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </main>
  </div>
</template>

<script lang="ts">
import { defineComponent } from "vue";

export default defineComponent({});
</script>

<style scoped>
@import url("https://fonts.googleapis.com/css2?family=Montserrat:wght@300&display=swap");

* {
  font-family: "Montserrat", sans-serif;
  font-weight: bold;
  color: white;
}

.full-page {
  height: 100vh;
  background: linear-gradient(to bottom, rgba(0, 0, 0, 0.185), rgba(0, 0, 0, 0.582)), url(/oscar.jpg);
  background-size: cover;
  background-repeat: no-repeat;
  position: relative; /* Posiziona l'overlay in modo relativo rispetto a questo elemento */
}

.navbar {
  padding-left: 20px;
  padding-top: 40px;
  min-width: 100%;
  justify-content: center;
  align-items: center;
}

h1 {
  margin: 0;
  padding: 8px;
  font-size: 22px;
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
  position:fixed; /* Posiziona l'overlay in modo assoluto */
  left: 3%;
  top: 2%;
  width: 94%;
  height: 96%;
  z-index: 0; /* Assicura che l'overlay sia sopra il contenuto */
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
  margin: 0;
}

.links>Routerlink {
  border: 1px solid #ffffff75;
  border-radius: 15px;
  padding: 7px;

  box-shadow: rgb(29, 44, 59) 0px 10px 20px -10px;
  background-color: rgba(255, 255, 255, 0.253); /* Sfondo semi-trasparente */
  font-size: larger;
  background: rgba(255, 255, 255, 0.2); /* Make sure this color has an opacity of less than 1*/
  backdrop-filter: blur(8px); /* This be the blur*/
}

</style>
