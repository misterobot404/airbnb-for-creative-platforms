<template>
  <Layout>
    <router-view/>
  </Layout>
</template>

<script>
import Layout from "./components/Layout.vue";
import axios from "axios";
import {useUserStore} from "./stores/user";

export default {
  name: "App",
  components: {Layout},
  beforeMount() {
    if (useUserStore().token) {
      axios.defaults.headers.common['Authorization'] = 'Bearer ' + useUserStore().token;
    }
  }
}
</script>

<style scoped>

</style>
