<script lang="ts">
import { defineComponent } from "vue";
import { Food } from "../types";
import axios from "axios";
import PostFood from "../components/post-food.vue"

export default defineComponent({
    components: { PostFood },
    props: {
        drink: {
            type: Object as () => Food,
            default: () => ({})
        }
    },
    data() {
        return {
            datiFood: [] as Food[],
        };
    },
    methods: {
        async getFood() {
            const res = await axios.get("/api/food");
            this.datiFood = res.data;
        },
    },
    mounted() {
        this.getFood();
    }
});
</script>

<template>
    <div class="page">
        <div class="title">
            <h2>Ristorante</h2>
        </div>
        <div class="image">
            <img src="/red.jpg" alt="">
            <img class="tumb" src="/tumblr.jpg" alt="">
        </div>
        <div class="meal-list">
            <PostFood v-for="food in datiFood" :key="food.idfood" :drink="food" />
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
    transform: translateX(-75px) translateY(80px);
    box-shadow: rgba(0, 0, 0, 0.3) 0px 19px 38px, rgba(0, 0, 0, 0.22) 0px 15px 12px;
}

img.tumb {
    width: 200px;
    position: relative;
    z-index: 100;
    transform: translateX(80px);
}

.image {
    margin-bottom: 30px;
    display: flex;
    align-items: center;
    position: relative;
    margin-bottom: 120px;
}

.meal-list {
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