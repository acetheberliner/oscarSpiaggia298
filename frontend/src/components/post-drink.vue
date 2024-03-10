<script lang="ts">
import { defineComponent } from "vue";
import { Drink } from "../types";

export default defineComponent({
    props: {
        drink: {
            type: Object as () => Drink,
            default: () => ({})
        },
    },
    data(){
        return {}
    },
});
</script>

<template>
    <button class="navbar-toggler text-white"  type="button" data-toggle="collapse" :data-target="'#toggle-' + drink.iddrink" aria-controls="toggle" aria-expanded="false" aria-label="Toggle navigation">
        <div class="present">
            <h3 class="nome">{{ drink.nome }}</h3>
            <h3 class="prezzo"><span class="precise">*</span> {{ drink.prezzo }}.00 €</h3>
        </div>
        <div class="collapse" :id="'toggle-' + drink.iddrink">
            <hr>
            <p class="categoria">{{ drink.categoria }}, {{ drink.sapore }}</p>
            <p class="ingredienti">{{ drink.ingredienti }} + {{ drink.garnish }}</p>
        </div>
    </button>
</template>

<style scoped>  

h2 {
    color: white;
}

hr{
    border: 1px solid white;
    border-radius: 20px;
}

img {
    width: 90px;
}

h3 {
    margin: 0;
}

button.navbar-toggler {
    border-radius: 20px;
    border: 1px solid rgba(68, 67, 67, 0.075);
    background-color: rgba(46, 45, 45, 0.712); /* Sfondo semi-trasparente */
    box-shadow: rgba(17, 17, 26, 0.1) 0px 8px 24px, rgba(17, 17, 26, 0.1) 0px 16px 56px, rgba(17, 17, 26, 0.1) 0px 24px 80px;
    width: 90%;
    margin-bottom: 20px;
    padding: 18px;
    text-align: start;
}

button.navbar-toggler:focus,
button.navbar-toggler:active,
button.navbar-toggler:hover,
button.navbar-toggler:visited {
    outline: none !important;
    border: 1px solid transparent;
}

.present{
    display: flex;
    flex-direction: row;
    justify-content: space-between;
}

.categoria {
    text-align: end;
    font-size: 16px;
    margin-bottom: 20px;
}

.ingredienti{
   font-size: 18px; 
}

.prezzo {
    font-style: italic;
}

.nome {
    font-weight: bold;
    text-shadow: 2px 2px #c09404;
}

.precise {
    color:#ffffff;
    font-weight: bold;
}
</style>

