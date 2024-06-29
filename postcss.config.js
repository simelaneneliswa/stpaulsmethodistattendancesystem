module.exports = {
  plugins: [
    require('tailwindcss'),
    require('autoprefixer'),
    // Add PurgeCSS only in production
    ...(process.env.NODE_ENV === 'production' ? [require('@fullhuman/postcss-purgecss')({
      content: [
        './app/**/*.html.erb',
        './app/helpers/**/*.rb',
        './app/javascript/**/*.js',
      ],
      defaultExtractor: content => content.match(/[\w-/:]+(?<!:)/g) || [],
    })] : []),
  ]
}
