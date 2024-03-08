<template>
  <div class="full-page">
    <main>
      <div class="container-fluid">
        <div class="row nav">
          <nav class="navbar">
            <div class="logo col-12">
              <img src="/giallo.jpg" alt="Logo" class="nav-logo">
              <h1>Oscar Spiaggia</h1>
            </div>
          </nav>
        </div>
      </div>
    </main>
  </div>
</template>

<script lang="ts">
</script>

<style scoped>
@import url("https://fonts.googleapis.com/css2?family=Montserrat:wght@300&display=swap");

* {
  font-family: "Montserrat", sans-serif;
}

.navbar {
  padding-top: 15px;
}

h1 {
  margin: 0;
  padding: 8px;
  font-size: 20px;
}

.logo {
  display: flex;
  vertical-align: middle;
  align-items: center;
  margin: auto;
  padding: 0;
}

.nav-logo {
  width: 55px;
}

</style>
