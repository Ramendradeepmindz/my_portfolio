'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter_bootstrap.js": "49870a62ee49069ecca50e682b5aa92b",
"version.json": "9b818ca9511483c901bed1545384376c",
"index.html": "f6b1236baae2a8517eaaa8f4759bfc03",
"/": "f6b1236baae2a8517eaaa8f4759bfc03",
"main.dart.js": "f11bbab7bfb31197015d1f5cbaaa4ef0",
"flutter.js": "f393d3c16b631f36852323de8e583132",
"favicon.png": "37f0821b09047aac88dac447c0834fe5",
"icons/Icon-192.png": "a46ce438c07243b0b49a22e77dbb9c01",
"icons/Icon-maskable-192.png": "a46ce438c07243b0b49a22e77dbb9c01",
"icons/Icon-maskable-512.png": "b53555f87e905e456141d9c245545f6c",
"icons/Icon-512.png": "b53555f87e905e456141d9c245545f6c",
"manifest.json": "f6682f0e74d933421fe1390be23b9d8e",
"assets/AssetManifest.json": "6a14f3fa7201bb31aeb90b32abd77f7c",
"assets/NOTICES": "6b94e4439d240da98fced14b6f0a0333",
"assets/FontManifest.json": "fa2874eb2509ffc5cc67b6b904988596",
"assets/AssetManifest.bin.json": "42177502061d767a1ef8cb008ed6e05f",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin": "3dcd915bc7d195cb33eb07607f77b8fb",
"assets/fonts/MaterialIcons-Regular.otf": "51e554860136246b19e3a3d423aef97d",
"assets/Assets/Images/login.png": "55e2b73ae4d3763f0e2b16fe1b126265",
"assets/Assets/Images/all.png": "2169d1edca047789ad44df384b641af2",
"assets/Assets/Images/onBoarding.png": "b4df9fca768eb15568dc5f4010f47b7e",
"assets/Assets/Images/attendances.svg": "990acd467dbfd4c2c29f14858cc1c11e",
"assets/Assets/Images/user_frendly.svg": "c9db4a1509f9c12e0a12d18469db9679",
"assets/Assets/Images/attendancesA.svg": "5fd0817469c7b11ce82390c29ff3b03b",
"assets/Assets/Logo/logoCir.png": "eb38dbdefa95e562b4bf62fcd3093444",
"assets/Assets/Logo/logoWithWhiteColor.png": "74a222973a0b5b065a2d7fe6905a2619",
"assets/Assets/Icons/house-laptop.svg": "542de6f1b36a4580cafe1b03d36e6323",
"assets/Assets/Icons/user.svg": "d58d4d5a63e901fd55f3d9318dafb627",
"assets/Assets/Icons/home.svg": "c25f832d5fa52a377e2b61e73ebe3d24",
"assets/Assets/Icons/house-leave.svg": "1c59fbbdc1808a87d9a02d16272a1af8",
"assets/Assets/Icons/team-check.svg": "e258cb5f8bc51a30a3fe57bc0b2c00c8",
"assets/Assets/Icons/settings.svg": "2f93d69a741e066d8bd2c59d578fb8ca",
"assets/Assets/Icons/envelope.svg": "09ff13ab7cc563323bfe5794eb98c408",
"assets/Assets/Icons/angle-right.svg": "7494d1d2253800e3d42819d8d84f3f49",
"assets/Assets/Icons/add.svg": "8094a4b05abc369d42693908c46fde3d",
"assets/Assets/Icons/marker.svg": "7992b5e9db89b8add297a42e46a7e213",
"assets/Assets/Icons/phone-call.svg": "273bf81e10494633c0a6e1eb0aefdb06",
"assets/Assets/Icons/whatsapp.svg": "7f5989f9473fae5d1cf92150bbcedca1",
"assets/Assets/Icons/paper-plane-top.svg": "8692bdcb418298644f5a9b319a98ea3b",
"assets/Assets/Icons/star.svg": "0402a63cccaecc4820075e5c4327a0ab",
"assets/Assets/Icons/clock-three.svg": "25b60a02986b8dac5a3695dbdc2a4e5c",
"assets/Assets/Icons/calendar-clock.svg": "1faa07af738b3aadb75fbc1b9bb7e076",
"assets/Assets/Icons/angle-left.svg": "a881ffe2cdd1b443b4fef82f8e4cf323",
"assets/Assets/IconsGIF/delete.gif": "242b4f3cc9f723e393ff09792214f722",
"assets/Assets/IconsGIF/edit.gif": "29d1a303a77d0fb8bb222728b2f95dfc",
"assets/Assets/IconsGIF/check.gif": "934b6b3222c3eb18a919093286f7785b",
"assets/Assets/IconsGIF/file%2520(1).gif": "1c871b6a3741231243163cfc58dfe656",
"assets/Assets/IconsGIF/file.gif": "25aa416a66647241ae1a70f7157c8c35",
"assets/Assets/IconsGIF/bin-file.gif": "d7ad53612620608585e5c629cc4e7304",
"assets/Assets/Fonts/Averia_Libre/AveriaLibre-Regular.ttf": "397fb17d4f0bb66d2d249c6768071164",
"assets/Assets/Fonts/Averia_Libre/AveriaLibre-Light.ttf": "15dfdc0e0b1fc892a44fe9dece542bb7",
"assets/Assets/Fonts/Averia_Libre/AveriaLibre-Bold.ttf": "378a11f21e81afc740d5fc05a95b8fcc",
"assets/Assets/Fonts/Lato/Lato-Thin.ttf": "7ab0bc06eecc1b75f8708aba3d3b044a",
"assets/Assets/Fonts/Lato/Lato-Bold.ttf": "24b516c266d7341c954cb2918f1c8f38",
"assets/Assets/Fonts/Lato/Lato-Black.ttf": "d83ab24f5cf2be8b7a9873dd64f6060a",
"assets/Assets/Fonts/Lato/Lato-Regular.ttf": "122dd68d69fe9587e062d20d9ff5de2a",
"assets/Assets/Fonts/Lato/Lato-Light.ttf": "2bcc211c05fc425a57b2767a4cdcf174",
"assets/Assets/Fonts/Montserrat/Montserrat-Medium.ttf": "bdb7ba651b7bdcda6ce527b3b6705334",
"assets/Assets/Fonts/Montserrat/Montserrat-Light.ttf": "94fbe93542f684134cad1d775947ca92",
"assets/Assets/Fonts/Montserrat/Montserrat-ExtraLight.ttf": "a7fe50578d9aa3966c925cb9722db03a",
"assets/Assets/Fonts/Montserrat/Montserrat-Bold.ttf": "ed86af2ed5bbaf879e9f2ec2e2eac929",
"assets/Assets/Fonts/Montserrat/Montserrat-SemiBold.ttf": "cc10461cb5e0a6f2621c7179f4d6de17",
"assets/Assets/Fonts/Montserrat/Montserrat-ExtraBold.ttf": "9e07cac927a9b4d955e2138bf6136d6a",
"assets/Assets/Fonts/Montserrat/Montserrat-Regular.ttf": "5e077c15f6e1d334dd4e9be62b28ac75",
"canvaskit/skwasm.js": "694fda5704053957c2594de355805228",
"canvaskit/skwasm.js.symbols": "262f4827a1317abb59d71d6c587a93e2",
"canvaskit/canvaskit.js.symbols": "48c83a2ce573d9692e8d970e288d75f7",
"canvaskit/skwasm.wasm": "9f0c0c02b82a910d12ce0543ec130e60",
"canvaskit/chromium/canvaskit.js.symbols": "a012ed99ccba193cf96bb2643003f6fc",
"canvaskit/chromium/canvaskit.js": "671c6b4f8fcc199dcc551c7bb125f239",
"canvaskit/chromium/canvaskit.wasm": "b1ac05b29c127d86df4bcfbf50dd902a",
"canvaskit/canvaskit.js": "66177750aff65a66cb07bb44b8c6422b",
"canvaskit/canvaskit.wasm": "1f237a213d7370cf95f443d896176460",
"canvaskit/skwasm.worker.js": "89990e8c92bcb123999aa81f7e203b1c"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
