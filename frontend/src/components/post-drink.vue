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
    <div class="drink-bubble">
        <h2>{{ drink.nome }}</h2>
    </div>
</template>

<style scoped>
.drink-bubble {
    border: 1px solid red;
    border-radius: 20px;
    padding: 8px;
    background-color: white;
}

h2 {
    color: black;
}
</style>

