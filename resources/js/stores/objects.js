import {defineStore} from 'pinia'
import axios from "axios";

export const useObjectsStore = defineStore('objects', {
    state: () => {
        return {
            objects: null,
            new_object: null,
            edit_object: null,
            categories: null,
        }
    },
    actions: {
        translateObjectJSONFields(object) {
            object.coordinates = JSON.parse(object.coordinates);
            object.benefits = JSON.parse(object.benefits);
            object.inventory = JSON.parse(object.inventory);
            object.gallery = JSON.parse(object.gallery);
            object.schedule = JSON.parse(object.schedule);

            return object;
        },
        getObjects() {
            return axios.get("/api/objects").then(response => {
                this.objects = response.data.map(object => {
                    return this.translateObjectJSONFields(object);
                }).reverse();
            });
        },
        getAllObjects() {
            return axios.get("/api/all_objects").then(response => {
                this.objects = response.data.map(object => {
                    return this.translateObjectJSONFields(object);
                }).sort((a, b) => a.id > b.id ? -1 : 1);
            });
        },
        getMyObjects() {
            return axios.get("/api/my_objects").then(response => {
                this.objects = response.data.map(object => this.translateObjectJSONFields(object)).sort((a, b) => a.id > b.id ? -1 : 1);
            });
        },
        getNewObject() {
            return {
                category_id: null,
                title: null,
                description: null,
                coordinates: null,
                address: null,
                address_comment: null,
                inventory: [],
                benefits: [],
                hour_price: null,
                minimal_autodeal_rating: null,
                show_price_for_authorised_only: false,
                gallery: [],
                schedule_date_start: null,
                schedule_date_end: null,
                schedule_time_start: null,
                schedule_time_end: null,
            }
        },
        getCategories() {
            return axios.get("/api/categories").then(response => this.categories = response.data.reverse());
        },
        createObject() {
            const formData = new FormData();
            formData.append('category_id', this.new_object.category_id);
            formData.append('title', this.new_object.title);
            formData.append('description', this.new_object.description);
            formData.append('coordinates', JSON.stringify(this.new_object.coordinates));
            formData.append('address', this.new_object.address);
            if (this.new_object.address_comment) {
                formData.append('address_comment', this.new_object.address_comment);
            }
            formData.append('inventory', JSON.stringify(this.new_object.inventory));
            formData.append('benefits', JSON.stringify(this.new_object.benefits));
            formData.append('hour_price', this.new_object.hour_price);
            if (this.new_object.minimal_autodeal_rating) {
                formData.append('minimal_autodeal_rating', this.new_object.minimal_autodeal_rating);
            }
            formData.append('show_price_for_authorised_only', this.new_object.show_price_for_authorised_only);
            if (this.new_object.panorama) {
                formData.append('panorama', this.new_object.panorama);
            }
            if (this.new_object.gallery) {
                this.new_object.gallery.forEach(file => formData.append(`gallery[]`, file));
            }

            let schedule = {
                date_start: this.new_object.schedule_date_start,
                date_end: this.new_object.schedule_date_end,
                time_start: this.new_object.schedule_time_start,
                time_end: this.new_object.schedule_time_end
            }
            formData.append('schedule', JSON.stringify(schedule));

            return axios.post('/api/objects', formData, {headers: {'Content-Type': 'multipart/form-data'}})
        },
        updateObject() {
            const formData = new FormData();
            formData.append('id', this.edit_object.id);
            formData.append('category_id', this.edit_object.category_id);
            formData.append('title', this.edit_object.title);
            formData.append('description', this.edit_object.description);
            formData.append('coordinates', JSON.stringify(this.edit_object.coordinates));
            formData.append('address', this.edit_object.address);
            if (this.edit_object.address_comment) {
                formData.append('address_comment', this.edit_object.address_comment);
            }
            formData.append('inventory', JSON.stringify(this.edit_object.inventory));
            formData.append('benefits', JSON.stringify(this.edit_object.benefits));
            formData.append('hour_price', this.edit_object.hour_price);
            if (this.edit_object.minimal_autodeal_rating) {
                formData.append('minimal_autodeal_rating', this.edit_object.minimal_autodeal_rating);
            }
            formData.append('show_price_for_authorised_only', this.edit_object.show_price_for_authorised_only);
            formData.append('panorama_url', this.edit_object.panorama_url);
            formData.append('gallery', JSON.stringify(this.edit_object.gallery));

            if (this.edit_object.new_gallery) {
                this.edit_object.new_gallery.forEach(file => formData.append(`new_gallery[]`, file));
            }

            formData.append('schedule', JSON.stringify(this.edit_object.schedule));

            return axios.post('/api/objects/' + this.edit_object.id, formData, {headers: {'Content-Type': 'multipart/form-data'}})
        },
    }
})
