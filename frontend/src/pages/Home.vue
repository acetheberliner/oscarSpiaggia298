<script lang="ts">
import { defineComponent } from "vue";
export default defineComponent({});
</script>

<template>
    <div class="page">
        <div class="bubble">
            <div class="intro">
                <h3>Scopri</h3>
                <img src="/panoramica.jpg" alt="panoramica" class="discover">
            </div>
            <div class="content">
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit amet diam eget arcu molestie vulputate.</p>
            </div>
        </div>
        <hr class="sep">
        <div class="bubble">
            <div class="title">
                <h3>Informazioni</h3>
            </div>
            <div class="info">
                <p><i class="bi bi-geo-alt"></i> Via VIII Traversa, Milano Marittima</p>
                <p><i class="bi bi-telephone"></i> 0544 992598</p>
                <p><i class="bi bi-envelope"></i> info@oscarspiaggia.com</p>
                <hr>
                <p><i class="bi bi-star"></i> Valutazione · <span class="val">4,7</span></p>
                <p><i class="bi bi-wallet2"></i> Fascia di prezzo · <span class="eur">€€</span></p>
            </div>
        </div>
    </div>
</template>

<style scoped>
* {
    color: white
}

.page {
    position: relative;
    z-index: 3;
}

.bubble {
    display: flex;
    flex-direction: column;
    align-items: center;
}

h3{
    text-shadow: 2px 2px #2f59a6;
    font-weight: bold;
}

hr.sep {
    border: 10px solid transparent;
}

.intro {
    text-align: center;
}

.discover {
    position: relative;
    width: 80%;
    z-index: 3;
    border: 1px solid transparent;
    border-radius: 30px;
    box-shadow: rgb(33, 34, 34) 0px 10px 20px -10px;
    filter: opacity(95%);
}

.content {
    position: relative;
    z-index: 3;
    border-radius: 20px;
    padding: 8px;
    width: 80%;
    border: 1px solid rgba(68, 67, 67, 0.075);
    background-color: rgba(46, 45, 45, 0.493); /* Sfondo semi-trasparente */
    box-shadow: rgb(92, 97, 97) 10px 10px 20px -10px;
    text-align: center;
    margin-top: 10px;
}

p {
    margin: 0;
    font-weight: 100;
}

hr {
    border: 1px solid white;
    border-radius: 20px;
    width: 90%;
}

.info {
    position: relative;
    z-index: 3;
    text-align: center;
    border-radius: 20px;
    padding: 8px;
    width: 80%;
    border: 1px solid rgba(68, 67, 67, 0.075);
    background-color: rgba(46, 45, 45, 0.493); /* Sfondo semi-trasparente */
    box-shadow: rgb(92, 97, 97) 10px 10px 20px -10px;
    margin-bottom: 25px;
}

i {
    color: #2e57a5;
}

.eur {
    color: white;
    font-style: italic;
    font-weight: bolder;
}

.val {
    color: #ffc107;
    font-weight: bolder;
}

</style>