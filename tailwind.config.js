/** @type {import('tailwindcss').Config} */
export default {
    content: [
        './resources/**/*.antlers.html',
        './resources/**/*.antlers.php',
        './resources/**/*.blade.php',
        './resources/**/*.vue',
        './content/**/*.md',
        "./node_modules/flowbite/**/*.js"
    ],

    theme: {
        extend: {
            colors: {
                primary: 'rgb(255, 38, 158)',
                secondary: 'rgb(107, 114, 128)',
                tertiary: 'rgb(250, 247, 125)',
            },
            fontFamily: {
                // merriweather: ['Merriweather'],
                // merriweatherSans: ['Merriweather Sans'],
                // fa: ['FontAwesome'],
            },
            fontSize: {
                sm: '0.875rem',
                base: '1rem',
                xl: '1.25rem',
                '2xl': '1.563rem',
                '3xl': '1.953rem',
                '4xl': '2.441rem',
                '5xl': '3.052rem',
            },
        },
    },

    plugins: [
        require('@tailwindcss/typography'),
        require('flowbite/plugin')
    ],
};
