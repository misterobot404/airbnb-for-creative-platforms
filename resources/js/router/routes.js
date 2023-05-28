import Home from "../pages/Home.vue";
import Account from "../pages/Account.vue";
import AccountSecurity from "../pages/AccountSecurity.vue"
import AccountPayment from "../pages/AccountPayment.vue"
import AccountNotification from "../pages/AccountNotification.vue"
import PageNotFound from "../pages/PageNotFound.vue";
import LeaseHistory from "../pages/LeaseHistory.vue";
import Helps from "../pages/Helps.vue";
import FavoriteObjects from "../pages/FavoriteObjects.vue";
import MyObjects from "../pages/MyObjects.vue";
import MyObjectsBooking from '../pages/MyObjectsBooking.vue'
import MyObjectsFinance from '../pages/MyObjectsFinance.vue'
import ObjectConstructor from "../pages/ObjectConstructor.vue";
import ObjectConstructorPrevious from "../pages/ObjectConstructorPrevious.vue";
import ObjectConstructorFinal from "@/pages/ObjectConstructorFinal.vue";

export default [
    /* Страницы доступны всем пользователям */
    {
        path: '/',
        component: Home,
        meta: {
            requiresAuth: false,
            fullWidth: true,
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
        path: '/account/account_security',
        component: AccountSecurity,
        meta: {
            requiresAuth: true
        }
    },
    {
        path: "/account/account_payment",
        component: AccountPayment,
        meta: {
            requiresAuth: true
        }
    },
    {
        path: "/account/account_notification",
        component: AccountNotification,
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
        path: '/object_constructor_previout',
        component: ObjectConstructorPrevious,
        meta: {
            requiresAuth: false
        }
    },
    {
        path: '/object_constructor',
        component: ObjectConstructor,
        meta: {
            requiresAuth: true
        }
    },
    {
        path: '/object_constructor_final',
        component: ObjectConstructorFinal,
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
    {
        path: '/my_objects/booking',
        component: MyObjectsBooking,
        meta: {
            requiresAuth: true
        }
    },
    {
        path: '/my_objects/finance',
        component: MyObjectsFinance,
        meta: {
            requiresAuth: true
        }
    },

]