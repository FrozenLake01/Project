<template>
  <v-card class="z-10 sidebar">
    <v-layout>
      <v-navigation-drawer expand-on-hover rail>
        <v-list>
          <v-list-item
            prepend-avatar="/CCTC_logo.png"
            subtitle="cctc@wela.edu"
            title="Admin"
          ></v-list-item>
        </v-list>

        <v-divider></v-divider>

        <v-list density="compact" nav>
          <v-list-item
            prepend-icon="mdi-folder"
            title="Home"
            value="home"
            :href="route('home')"
            ></v-list-item>
            <v-list-item
            :href="route('dashboard')"
            prepend-icon="mdi-account-multiple"
            title="Dashboard"
            value="dashboard"
            ></v-list-item>
            <v-list-item
            :to="route('home')"
            prepend-icon="mdi-star"
            title="Inquiries"
            value="inquiries"
          ></v-list-item>
        </v-list>
      </v-navigation-drawer>
    </v-layout>
  </v-card>
</template>

  <script setup>
</script>

<style scoped>
  .sidebar {
    z-index: 10; /* Default z-index */
  }
</style>