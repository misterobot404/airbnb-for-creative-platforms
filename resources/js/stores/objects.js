import {defineStore} from 'pinia'
import axios from "axios";

export const useObjectsStore = defineStore('objects', {
    state: () => {
        return {
            objects: null,
            categories: null,
        }
    },
    actions: {
        getObjects() {
            return axios.get("/api/objects").then(response => this.objects = response.data);
        },
        getCategories() {
            return axios.get("/api/categories").then(response => this.categories = response.data.reverse());
        }
    }
})
