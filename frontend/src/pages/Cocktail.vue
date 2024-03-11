<script lang="ts">
import { defineComponent } from "vue";
import { Drink } from "../types";
import axios from "axios";
import PostDrink from "../components/post-drink.vue"

export default defineComponent({
    components: { PostDrink },
    props: {
        drink: {
            type: Object as () => Drink,
            default: () => ({})
        }
    },
    data() {
        return {
            datiDrink: [] as Drink[],
        };
    },
    methods: {
        async getDrink() {
            const res = await axios.get("/api/drink");
            this.datiDrink = res.data;
        },
    },
    mounted() {
        this.getDrink();
    }
});
</script>

<template>
    <div class="page">
        <div class="title">
            <h2>Cocktail</h2>
        </div>
        <div class="image">
            <img src="/red.jpg" alt="">
            <img class="tumb" src="/tumblr.jpg" alt="">
        </div>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#info" aria-controls="toggle" aria-expanded="false" aria-label="Toggle navigation">
            <p class="attention">!!! <i class="bi bi-info-circle"></i> !!!</p>
        </button>
        <div id="info" class="collapse">
            <p>* : in occasione di eventi speciali, i prezzi vengono calcolati differentemente. <br> Grazie per la comprensione.</p>
        </div>
        <div class="drink-list">
            <PostDrink v-for="drink in datiDrink" :key="drink.iddrink" :drink="drink" />
        </div>
    </div>
</template>

<style scoped>
p.attention {
    margin: 0;
    color: white;
    box-shadow: rgba(0, 0, 0, 0.4) 0px 30px 90px;
}

img {
    width: 200px;
    border: 1px solid transparent;
    border-radius: 20px;
    position: absolute;
    z-index: 99;
    transform: translateX(75px) translateY(80px);
    box-shadow: rgba(0, 0, 0, 0.3) 0px 19px 38px, rgba(0, 0, 0, 0.22) 0px 15px 12px;
}

img.tumb {
    width: 200px;
    position: relative;
    z-index: 100;
    transform: translateX(-80px);
}

.image {
    margin-bottom: 30px;
    display: flex;
    align-items: center;
    position: relative;
    margin-bottom: 120px;
}

.drink-list {
    display: flex;
    flex-direction: column;
    align-items: center;
    background-color: rgba(255, 255, 255, 0.548);
    width: 95%;
    border: 1px solid rgba(255, 255, 255, 0.452);
    border-radius: 20px;
    padding: 6px;
    padding-top: 20px;
    box-shadow: rgba(0, 0, 0, 0.56) 0px 22px 70px 4px;
    margin-bottom: 20px;
}

.page {
    display: flex;
    flex-direction: column;
    align-items: center;
}

.title {
    display: flex;
    flex-direction: row;
    align-items: center;
    justify-content: space-between;
    margin-bottom: 20px;
}

h2 {
    font-weight: bold;
    text-shadow: 2px 2px #2f59a6;
    margin: 0;
}

button {
    border: 1px solid transparent;
    background-color: transparent;
    margin-bottom: 24px;
}

button:focus, button:after {
    outline: none;
}

i{
    color: white;
    font-size: 30px;
    text-shadow: 2px 2px #ff0202;
}

p {
    border: 1px solid rgba(255, 0, 0, 0.384);
    background-color: rgba(255, 0, 0, 0.301);
    border-radius: 20px;
    padding: 8px;
    text-align: center;
    margin-bottom: 30px;
}

#info {
    width: 90%;
}

footer {
    bottom: 0;
    position: sticky;
}

</style>