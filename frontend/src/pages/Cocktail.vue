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
        <h3>Cocktail</h3>
        <PostDrink v-for="drink in datiDrink" :key="drink.iddrink" :drink="drink" />
    </div>
</template>

<style scoped>

.page {
    display: flex;
    flex-direction: column;
    align-items: center;
}

h3 {
    font-weight: bold;
}

</style>