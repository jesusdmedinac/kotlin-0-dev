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
				en: {
					label: 'English',
					lang: 'en',
				},
			},
			head: [
				{
					tag: 'script',
					content: `
(function() {
  try {
    var STORAGE_KEY = 'desde0_preferred_lang';
    var stored = localStorage.getItem(STORAGE_KEY);
    var pathname = window.location.pathname;
    var isEnglishPath = pathname === '/en' || pathname.startsWith('/en/');

    // If current URL is in /en, mark preferred lang as en
    if (isEnglishPath) {
      localStorage.setItem(STORAGE_KEY, 'en');
      return;
    }

    // If user arrived from /en to a non-/en path, they switched or navigated to Spanish
    if (document.referrer && document.referrer.indexOf('/en') !== -1 && !isEnglishPath) {
      localStorage.setItem(STORAGE_KEY, 'es');
      return;
    }

    // If preference is already Spanish, stay on Spanish
    if (stored === 'es') {
      return;
    }

    // If preference is already English and currently on root path, redirect to /en
    if (stored === 'en' && !isEnglishPath) {
      var target = '/en' + (pathname === '/' ? '/' : pathname);
      window.location.replace(target);
      return;
    }

    // First visit without stored preference: inspect browser language list
    if (!stored) {
      var langs = navigator.languages || [navigator.language || ''];
      var isEnglish = false;
      for (var i = 0; i < langs.length; i++) {
        var l = (langs[i] || '').toLowerCase();
        if (l.startsWith('es')) {
          isEnglish = false;
          break;
        }
        if (l.startsWith('en')) {
          isEnglish = true;
          break;
        }
      }

      if (isEnglish && !isEnglishPath) {
        localStorage.setItem(STORAGE_KEY, 'en');
        var newTarget = '/en' + (pathname === '/' ? '/' : pathname);
        window.location.replace(newTarget);
      } else {
        localStorage.setItem(STORAGE_KEY, 'es');
      }
    }
  } catch (e) {}
})();

if (typeof window !== 'undefined') {
  window.addEventListener('DOMContentLoaded', function() {
    document.addEventListener('change', function(e) {
      var target = e.target;
      if (target && (target.matches('starlight-select select') || target.closest('starlight-select'))) {
        var val = target.value || '';
        if (val.startsWith('/en')) {
          localStorage.setItem('desde0_preferred_lang', 'en');
        } else {
          localStorage.setItem('desde0_preferred_lang', 'es');
        }
      }
    });
  });
}
`,
				},
			],
			social: [
				{ icon: 'github', label: 'GitHub', href: 'https://github.com/jesusdmedinac/kotlin-0-dev' },
				{ icon: 'discord', label: 'Discord', href: 'https://discord.gg/nChTf3PdGJ' },
				{ icon: 'youtube', label: 'YouTube', href: 'https://www.youtube.com/@jesusdmedinac' }
			],
			sidebar: [
				{ label: "Bienvenida", link: "/", translations: { en: "Welcome" } },
				{
					label: "1. Kotlin para no programadoras",
					link: "/course-1-non-programmers/",
					translations: { en: "1. Kotlin for Non-Programmers" }
				},
				{
					label: "2. Kotlin para principiantes", 
					translations: { en: "2. Kotlin for Beginners" },
					items: [
						{ autogenerate: { directory: 'course-2-beginners' } }
					]
				},
				{
					label: "3. Kotlin para desarrolladores Android",
					link: "/course-3-android/",
					translations: { en: "3. Kotlin for Android Developers" }
				},
				{
					label: "4. Kotlin para desarrolladores móviles",
					link: "/course-4-mobile/",
					translations: { en: "4. Kotlin for Mobile Developers" }
				},
				{
					label: "5. Kotlin para ingenieros",
					link: "/course-5-engineers/",
					translations: { en: "5. Kotlin for Engineers" }
				}
			]
		}),
	],
});
