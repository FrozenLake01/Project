<script setup>
import Sidebar from '../Components/Sidebar.vue';
defineProps({
  errors: Object,
  user: Object,
  subjects: Object,
});

</script>



<template>
  <Sidebar />
  <div class="container mx-auto p-5 mt-14">
    <h1 class="text-2xl mb-2">Student Name: {{ user.name }} </h1>
    <v-table height="500px" fixed-header class="border">
      <thead>
        <tr>
          <th class="text-left p-4">Code</th>
          <th class="text-left p-4">Subject</th>
          <th class="text-left p-4">Grade</th>
          <th class="text-center p-4">Year Level</th>
          <th class="text-center p-4">Actions</th>
        </tr>
      </thead>
      <tbody>
        <tr v-for="(subject, index) in subjects" :key="index">
          <td> {{ subject.course_code }} </td>
          <td> {{ subject.course_name }} </td>
        </tr>
      </tbody>
    </v-table>
  </div>

</template>




<style></style>