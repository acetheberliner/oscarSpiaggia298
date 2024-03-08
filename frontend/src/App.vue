<template>
  <div class="mobile-container">
    <div class="topnav">
      <a href="#home" class="active text-dark">Logo</a>
      <div ref="myLinks" class="links">
        <a href="#news">News</a>
        <a href="#contact">Contact</a>
        <a href="#about">About</a>
      </div>
      <a href="#" class="icon" @click="myFunction">
        <i class="fa fa-bars"></i>
      </a>
    </div>
  </div>
</template>

<script lang="ts">
import { defineComponent } from "vue";

export default defineComponent({
  methods: {
    myFunction() {
      const x = this.$refs.myLinks as HTMLElement;
      if (x.style.display === "block") {
        x.style.display = "none";
      } else {
        x.style.display = "block";
      }
    },
  },
});
</script>

<style scoped>
body {
  font-family: Arial, Helvetica, sans-serif;
}

.mobile-container {
  max-width: 480px;
  margin: auto;
  height: 500px;
  color: white;
  border-radius: 10px;
}

.topnav {
  overflow:visible;
  background-color: #333;
  position: relative;
}

.links {
  display: none;
}

.topnav a {
  color: white;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
  display: block;
}

.topnav a.icon {
  background: black;
  display: block;
  position: absolute;
  right: 0;
  top: 0;
}

a.icon {
  border-radius: 8px;
  margin: 10px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.active {
  background-color: #fff;
  color: white;
}
</style>
