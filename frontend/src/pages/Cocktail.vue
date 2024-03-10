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
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#info" aria-controls="toggle" aria-expanded="false" aria-label="Toggle navigation">
                <i class="bi bi-info-circle"></i>
            </button>
        </div>
        <div id="info" class="collapse">
            <p>* : in occasione di eventi speciali, i prezzi vengono calcolati differentemente. <br> Grazie per l'attenzione.</p>
        </div>
        <PostDrink v-for="drink in datiDrink" :key="drink.iddrink" :drink="drink" />
    </div>
</template>

<style scoped>

.page {
    display: flex;
    flex-direction: column;
    align-items: center;
}

.title {
    display: flex;
    flex-direction: column;;
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
    margin-bottom: 10px;
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