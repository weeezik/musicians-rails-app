module.exports = {
  plugins: [
    require('@tailwindcss/forms'),
    require('flowbite-typography')
  ],
  content: [
    './app/views/**/*.html.erb',
    './app/helpers/**/*.rb',
    './app/assets/stylesheets/**/*.css',
    './app/javascript/**/*.js'
  ]  
}
