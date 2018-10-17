<template>
  <div class='center aligned sixteen wide column'>
    <h1>Make your order</h1>
  </div>
</template>

<script>
export default {

  data: function() {
    return {
      locale: window.I18n.locale,
      availableLocales: window.I18n.availableLocales
    }
  },

  methods: {
    activeOn: function(paths) {
      if(paths.includes(this.$route.name)) {
        return 'active';
      } else {
        return '';
      }
    }
  },

  watch: {
    locale: function(locale) {
      let redirectTo = `/${locale}${this.$route.path}`;
      if(locale == this.availableLocales[0]) {
        redirectTo = `${this.$route.path}`
      }

      window.location.href = redirectTo;
    }
  }
}
</script>
