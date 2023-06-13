import {defineStore} from 'pinia'
import axios from "axios";

export const useDealsStore = defineStore('deals', {
    state: () => {
        return {
            deals: null,
            all_deals: null
        }
    },
    actions: {
        getDealsOnMyObject() {
            return axios.get("/api/deals_on_my_objects").then(response => {
                this.deals = response.data.reverse();
            });
        },
        getMyDeals() {
            return axios.get("/api/my_deals").then(response => {
                this.deals = response.data.reverse();
            });
        },
        getAllDeals() {
            return axios.get("/api/deals").then(response => {
                this.all_deals = response.data;
            });
        },
        create(object, user_id, total_price, starts_from, ends_on) {
            return axios.post('/api/deals', {
                object_owner_id: object.owner_user_id,
                object_id: object.id,
                hour_price: object.hour_price,
                customer_id: user_id,
                total_price: total_price,
                starts_from: starts_from,
                ends_on: ends_on,
                confirmed: false
            })
        },
    }
})
