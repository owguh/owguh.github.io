const CACHE='cineexpert-mobile-v4.7';
const ASSETS = ['./', './index.html','./estilo.css?v=470','./dados.js?v=470','./metadados.js?v=470','./motor.js?v=470','./teste_escala.js?v=460','./aplicativo.js?v=470','./manifest.webmanifest','./icons/icon-192.png','./icons/icon-512.png'];
self.addEventListener('install', event => event.waitUntil(caches.open(CACHE).then(cache => cache.addAll(ASSETS)).then(() => self.skipWaiting())));
self.addEventListener('activate', event => event.waitUntil(caches.keys().then(keys => Promise.all(keys.filter(key => key !== CACHE).map(key => caches.delete(key)))).then(() => self.clients.claim())));
// Capas: primeiro o cache (não mudam). Páginas, scripts e dados: primeiro a rede, para que um
// catálogo atualizado chegue logo a quem já instalou; sem internet, usa a cópia do cache.
self.addEventListener('fetch', event => {
  const req = event.request;
  if (req.method !== 'GET' || new URL(req.url).origin !== location.origin) return;
  const isPoster = new URL(req.url).pathname.includes('/capas/');
  if (isPoster) {
    event.respondWith(caches.match(req).then(hit => hit || fetch(req).then(response => {
      if (response.ok) { const copy = response.clone(); event.waitUntil(caches.open(CACHE).then(cache => cache.put(req, copy))); }
      return response;
    })));
    return;
  }
  event.respondWith(fetch(req).then(response => {
    if (response.ok) { const copy = response.clone(); event.waitUntil(caches.open(CACHE).then(cache => cache.put(req, copy))); }
    return response;
  }).catch(() => caches.match(req).then(hit => hit || (req.mode === 'navigate' ? caches.match('./index.html') : Response.error()))));
});
