<template>
  <div class="ui container">
    <div class="ui form">
      <label>How we'll find you</label>
      <div class="field">
        <label>Phone number</label>
        <div class="ui labeled input">
          <label for="contact" class="ui label">+254</label>
          <input type="text" name="contact" placeholder="" v-model="contact">
        </div>
      </div>
      <div class="field">
          <label>Location</label>
          <input type="text" name="location" placeholder="Westlands" v-model="location">
      </div>
      <div class="ui button" v-on:click="handleForm">Next</div>
    </div>
  </div>
</template>

<script>
export default {

  data: function() {
    return {
      type: 'chilli',
      contact: 0,
      location: '',
    }
  },

  methods: {
    handleForm: function() {
      this.contact
    },
  },
}
</script>
