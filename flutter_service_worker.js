'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "/main.dart.js": "e1baba7a4189748ce23aa27c18023cc9",
"/index.html": "7cf1ac190e91969d80c887df851a940c",
"/assets/images/me.jpg": "3ea6f2a9b20a76cda2173c4710ac1bec",
"/assets/images/desk.jpg": "afda855b0a7e22f84d7b40b884424649",
"/assets/fonts/Roboto-Medium.ttf": "58aef543c97bbaf6a9896e8484456d98",
"/assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"/assets/fonts/Roboto-Regular.ttf": "11eabca2251325cfc5589c9c6fb57b46",
"/assets/fonts/Roboto-Bold.ttf": "e07df86cef2e721115583d61d1fb68a6",
"/assets/fonts/PlayfairDisplay-Medium.ttf": "6b6f0053a6811a9381a9fa488ac76cb0",
"/assets/fonts/Roboto-Light.ttf": "88823c2015ffd5fa89d567e17297a137",
"/assets/fonts/PlayfairDisplay-Regular.ttf": "b3721ba3bde34e5b38b0e1523cccfd7f",
"/assets/FontManifest.json": "fcd9b463321536c3929a8d3f2a07e513",
"/assets/LICENSE": "b441182d702fb80aa2647b582866e157",
"/assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"/assets/AssetManifest.json": "f99fe9ea873c2122e12685a52d9b2626"
};

self.addEventListener('activate', function (event) {
  event.waitUntil(
    caches.keys().then(function (cacheName) {
      return caches.delete(cacheName);
    }).then(function (_) {
      return caches.open(CACHE_NAME);
    }).then(function (cache) {
      return cache.addAll(Object.keys(RESOURCES));
    })
  );
});

self.addEventListener('fetch', function (event) {
  event.respondWith(
    caches.match(event.request)
      .then(function (response) {
        if (response) {
          return response;
        }
        return fetch(event.request);
      })
  );
});
