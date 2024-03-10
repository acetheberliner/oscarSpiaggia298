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
    <h3>{{ drink.categoria }}</h3>
</template>

<style scoped>
</style>

