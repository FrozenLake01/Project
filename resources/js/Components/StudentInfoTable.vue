<template>
  <div class="container mx-auto p-5 mt-14">
    <h1 class="text-2xl mb-2">Student Info</h1>
    <v-table height="500px" fixed-header class="border">
      <thead>
        <tr>
          <th class="text-left p-4">Id</th>
          <th class="text-left p-4">Name</th>
          <th class="text-left p-4">Email</th>
          <th class="text-left p-4">Program</th>
          <th class="text-center p-4">Year Level</th>
          <th class="text-center p-4">Actions</th>
        </tr>
      </thead>
      <tbody>
        <tr v-for="(user, index) in props.userInfo.data" :key="index">
          <td>{{ index + 1}}</td>
          <td>{{ user.name }}</td>
          <td>{{ user.email }}</td>
          <td>{{ user.program }}</td>
          <td class="text-center">{{ user.year_level }}</td>
          <td class="text-center"><button @click.prevent="showGrades(user.id)" class="mx-5">
            View
          </button></td>

        </tr>
      </tbody>
    </v-table>
  </div>
  
</template>

<script setup>
import { router } from "@inertiajs/vue3";

const props = defineProps({
  userInfo: {
    type: Object,
    required: true,
  },
});

function showGrades(id) {
  router.get("/dashboard/" + id + "/grades");
}
</script>

