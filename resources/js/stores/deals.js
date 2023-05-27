import {defineStore} from 'pinia'
import axios from "axios";

export const useDealsStore = defineStore('deals', {
    state: () => {
        return {
            places: null,
            categories: null,
        }
    },
    actions: {

    }
})
