/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    './src/**/*.{html,md,liquid,erb,serb,rb}',
    './frontend/javascript/**/*.js',
  ],
  theme: {
    extend: {},
    fontFamily: {
      "sans": ["Open Sans", "sans-serif"],
      "serif": ["Playfair Display", "serif"],
    },
  },
  plugins: [],
}
