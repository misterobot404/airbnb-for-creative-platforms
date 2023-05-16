<template>
    <div>
        <div class="flex q-gutter-x-lg justify-center page-padding no-wrap overflow-auto" style="margin: 18px">
            <div v-for="category in categories" class="text-center">
                <img :src="category.icon">
                <div class="text-01">{{ category.title }}</div>
            </div>
        </div>
        <YandexMap
                :coordinates="[55.75, 37.57]"
                :zoom="11"
                :detailed-controls="map_detailed_controls"
                :controls="map_controls"
                style="height: calc(100vh - 92px - 80px)"
        >
            <YandexMarker :coordinates="[55.684381, 37.339849]"/>
        </YandexMap>
    </div>
</template>

<script>
import {YandexMap, YandexMarker} from 'vue-yandex-maps'
import imageUrl from '../assets/images/category_icons/default.svg'

export default {
    name: "Home",
    components: {YandexMarker, YandexMap},
    data() {
        return {
            map: null,
            map_controls: ['typeSelector', 'trafficControl', 'fullscreenControl'],
            map_detailed_controls: {zoomControl: {position: {right: 10, top: 50}}},

            categories: [
                {
                    title: "Фото студии",
                    icon: imageUrl
                },
                {
                    title: "Фото стульев",
                    icon: imageUrl
                },
                {
                    title: "Фото столов",
                    icon: imageUrl
                },
                {
                    title: "Фото ложек",
                    icon: imageUrl
                },
                {
                    title: "Фото кружек",
                    icon: imageUrl
                },
                {
                    title: "Фото Саши",
                    icon: imageUrl
                },
                {
                    title: "Фото Маши",
                    icon: imageUrl
                },
                {
                    title: "Фото Миши",
                    icon: imageUrl
                },
                {
                    title: "Фото Семёна",
                    icon: imageUrl
                },
                {
                    title: "Фото Семёна",
                    icon: imageUrl
                },
                {
                    title: "Фото Семёна",
                    icon: imageUrl
                },
                {
                    title: "Фото Семёна",
                    icon: imageUrl
                },
                {
                    title: "Фото Семёна",
                    icon: imageUrl
                },
            ]
        }
    },

}
</script>

<style scoped>

</style>
