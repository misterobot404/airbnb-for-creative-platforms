import Home from "../pages/Home.vue";
import Account from "../pages/Account.vue";
import PageNotFound from "../pages/PageNotFound.vue";
import LeaseHistory from "../pages/LeaseHistory.vue";
import LeaseObject from "../pages/LeaseObject.vue";
import Helps from "../pages/Helps.vue";
import FavoriteObjects from "../pages/FavoriteObjects.vue";
import MyObjects from "../pages/MyObjects.vue";

export default [
    /* Страницы доступны всем пользователям */
    {
        path: '/',
        component: Home,
        meta: {
            requiresAuth: false
        }
    },
    {
        path: '/help',
        component: Helps,
        meta: {
            requiresAuth: false
        }
    },
    {
        path: "/:pathMatch(.*)*",
        component: PageNotFound,
        meta: {
            requiresAuth: false
        }
    },
    /* Страницы доступны только авторизованным пользователям */
    {
        path: '/account',
        component: Account,
        meta: {
            requiresAuth: true
        }
    },
    {
        path: '/favorite_objects',
        component: FavoriteObjects,
        meta: {
            requiresAuth: true
        }
    },
    {
        path: '/lease_object',
        component: LeaseObject,
        meta: {
            requiresAuth: true
        }
    },
    {
        path: '/lease_history',
        component: LeaseHistory,
        meta: {
            requiresAuth: true
        }
    },
    {
        path: '/my_objects',
        component: MyObjects,
        meta: {
            requiresAuth: true
        }
    },

]