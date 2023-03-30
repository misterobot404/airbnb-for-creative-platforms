<template>
    <Layout>
        <router-view/>
    </Layout>
</template>

<script>
/*
import Vue from "vue"
import Vuesax from 'vuesax'
import 'vuesax/dist/vuesax.css'
Vue.use(Vuesax);
*/

import Layout from "@/components/Layout.vue";

export default {
    name: "App",
    components: {Layout}
}
</script>

<style scoped>

</style>
