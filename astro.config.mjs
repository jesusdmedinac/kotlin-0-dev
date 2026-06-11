// @ts-check
import { defineConfig } from 'astro/config';
import starlight from '@astrojs/starlight';

// https://astro.build/config
export default defineConfig({
	integrations: [
		starlight({
			title: 'Desde0: Cursos Kotlin',
			defaultLocale: 'root',
			locales: {
				root: {
					label: 'Español',
					lang: 'es',
				},
			},
			social: [{ icon: 'github', label: 'GitHub', href: 'https://github.com/jesusdmedinac/kotlin-0-dev' }],
			sidebar: [
				{
					label: 'Curso 2: Principiantes',
					autogenerate: { directory: 'course-2-beginners' },
				},
			],
		}),
	],
});
