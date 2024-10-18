import { defineConfig } from 'vite';
import laravel from 'laravel-vite-plugin';
// import vue2 from '@vitejs/plugin-vue2';

export default defineConfig({
    plugins: [
        laravel({
            input: [
                'resources/css/site.scss',
                'resources/js/site.js',

                // Control Panel assets.
                // https://statamic.dev/extending/control-panel#adding-css-and-js-assets
                // 'resources/css/cp.scss',
                // 'resources/js/cp.js',
            ],
            refresh: true,
        }),
    ],
    css: {
        preprocessorOptions: {
            scss: {
                // NB: might be able to remove with Vite v6 as this should be default.
                // https://sass-lang.com/documentation/breaking-changes/legacy-js-api/#bundlers
                api: 'modern-compiler',
            },
        },
    },
});
