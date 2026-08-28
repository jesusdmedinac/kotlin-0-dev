// @ts-check
import { defineConfig } from 'astro/config';
import starlight from '@astrojs/starlight';

// https://astro.build/config
export default defineConfig({
	site: 'https://kotlin-0-dev.jesusdmedinac.com',
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
			social: [
				{ icon: 'github', label: 'GitHub', href: 'https://github.com/jesusdmedinac/kotlin-0-dev' },
				{ icon: 'discord', label: 'Discord', href: 'https://discord.gg/nChTf3PdGJ' },
				{ icon: 'youtube', label: 'YouTube', href: 'https://www.youtube.com/@jesusdmedinac' }
			],
			sidebar: [
				{ label: "Bienvenida", link: "/" },
				{
					label: "1. Kotlin para no programadoras",
					link: "/course-1-non-programmers/"
				},
				{
					label: "2. Kotlin para principiantes", 
					items: [
						{ autogenerate: { directory: 'course-2-beginners' } }
					]
				},
				{
					label: "3. Kotlin para desarrolladores Android",
					link: "/course-3-android/"
				},
				{
					label: "4. Kotlin para desarrolladores móviles",
					link: "/course-4-mobile/"
				},
				{
					label: "5. Kotlin para ingenieros",
					link: "/course-5-engineers/"
				}
			]
		}),
	],
});
