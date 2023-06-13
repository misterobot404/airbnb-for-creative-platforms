<template>
  <q-dialog v-model="show_signup" persistent>
    <q-card style="min-width: 440px">
      <form @submit.prevent="signup()">
        <q-card-section class="row items-center">
          <div class="text-h6">Регистрация</div>
          <q-space/>
          <q-btn icon="close" flat round dense v-close-popup/>
        </q-card-section>

        <q-separator/>

        <q-card-section class="q-gutter-y-md">
          <q-toggle v-model="is_entity" label="Юридическое лицо"/>
          <div v-if="is_entity">
            <q-input v-model="organization_name" label="Название организации" filled required>
              <template v-slot:append>
                <q-icon name="corporate_fare"/>
              </template>
            </q-input>
            <q-separator/>
            <q-input v-model="organization_inn" label="ИНН" filled required>
              <template v-slot:append>
                <q-icon name="assignment"/>
              </template>
            </q-input>
            <q-separator/>
            <q-input v-model="employer_position" label="Должность" filled required>
              <template v-slot:append>
                <q-icon name="engineering"/>
              </template>
            </q-input>
          </div>
          <div class="q-mt-sm">
            <q-input v-model="surname" label="Введите фамилию" filled required>
              <template v-slot:append>
                <q-icon name="person"/>
              </template>
            </q-input>
            <q-separator/>
            <q-input v-model="name" label="Введите имя" filled required/>
            <q-separator/>
            <q-input v-model="patronymic" label="Введите отчество" filled required/>
          </div>
          <q-input filled
                   label="Дата рождения"
                   v-model="birthday"
                   hint="Минимальный возраст регистрации: 18 лет"
                   required
                   @focus="birthdayFocus()"
          >
            <template v-slot:append>
              <q-icon name="event" class="cursor-pointer">
                <q-popup-proxy cover transition-show="scale" transition-hide="scale" ref="birthday">
                  <q-date v-model="birthday" minimal mask="DD.MM.YYYY"/>
                </q-popup-proxy>
              </q-icon>
            </template>
          </q-input>
          <q-input v-model="phonenumber" label="Номер телефона" mask="+7(###)###-##-##" fill-mask="_" filled required class="input-lg-hint"
                   hint="Только верифицированные пользователи увидят ваш номер телефона в объявлении">
            <template v-slot:append>
              <q-icon name="call"/>
            </template>
          </q-input>
          <q-input v-model="email" label="Введите электронную почту" filled class="input-lg-hint" type="email" required
                   hint="На почту будет отправляться подтверждение брони и квитанции об оплате">
            <template v-slot:append>
              <q-icon name="mail"/>
            </template>
          </q-input>

          <div>
            <q-input v-model="password" label="Введите пароль" filled type="password" required minlength="6">
              <template v-slot:append>
                <q-icon name="password"/>
              </template>
            </q-input>
            <q-separator/>
            <q-input v-model="confirm_password" label="Повторите пароль" filled type="password" required minlength="6"/>
          </div>
        </q-card-section>

        <q-separator/>
        <q-card-section class="flex justify-end q-gutter-x-xs">
          <q-btn @click="showSigninDialog()" flat label="Авторизация" color="primary" v-close-popup/>
          <q-btn label="Подтвердить" color="primary" type="submit" :loading="signup_loading"/>
        </q-card-section>
      </form>
    </q-card>
  </q-dialog>
</template>

<script>
import {useUserStore} from "../stores/user";

export default {
  name: "SignupDialog",
  data() {
    return {
      USER_STORE: useUserStore(),
      is_entity: false,
      organization_name: null,
      organization_inn: null,
      employer_position: null,

      name: null,
      surname: null,
      patronymic: null,

      birthday: null,
      phonenumber: null,
      email: null,

      password: null,
      confirm_password: null,

      signup_loading: false
    }
  },
  computed: {
    show_signup: {
      get() {
        return this.USER_STORE.show_signup_dialog;
      },
      set(newValue) {
        this.USER_STORE.show_signup_dialog = newValue;
      }
    }
  },
  methods: {
    birthdayFocus() {
      if (!this.birthday) {
        this.$refs.birthday.show();
      }
    },
    clear() {
      is_entity: false,
          this.name = null;
          this.surname  = null;
          this.patronymic  = null;
          this.phonenumber  = null;
          this.birthday = null;
          this.email = null;
          this.password = null;
          this.is_entity = false;
          this.organization_name = null;
          this.organization_inn = null;
          this.employer_position = null;
    },
    signup() {
      if (this.password.length < 5) {
        this.$q.notify({type: "negative", message: "Длина пароля менее 5 символов"});
        return;
      }

      if (this.password !== this.confirm_password) {
        this.$q.notify({type: "negative", message: "Пароли не совпадают"});
        return;
      }

      this.signup_loading = true;
      let payload = {
        name: this.name,
        surname: this.surname,
        patronymic: this.patronymic,
        phonenumber: this.phonenumber,
        birthday: this.birthday,
        email: this.email,
        password: this.password,
        is_entity:this.is_entity,
        organization_name: this.organization_name,
        organization_inn: this.organization_inn,
        employer_position: this.employer_position
      }

      this.USER_STORE.signup(payload)
          .then(() => {
            this.USER_STORE.signin(this.email, this.password).then(() => {
              this.$q.notify({type: "positive", message: "Регистрация выполнена"});
              this.USER_STORE.show_signup_dialog = false;
              this.clear();
            })
          })
          .catch((response) => {
            if (response.status = 422) {
              this.$q.notify({type: "negative", message: "Такая почта уже зарегистрирована"});
            } else {
              this.$q.notify({type: "negative", message: "Ошибка сервера"});
            }
          })
          .finally(() => this.signup_loading = false)
    },
    showSigninDialog() {
      this.USER_STORE.show_signin_dialog = true;
    }
  }
}
</script>

<style scoped>

</style>