'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.json": "f84b387099acd06e91214d2eabef1ca3",
"assets/AssetManifest.smcbin": "6a04be6e6f23a3bac702adc84e1f4a21",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "62ec8220af1fb03e1c20cfa38781e17e",
"assets/lib/Icons/Buttons/Cupboard.png": "d27cb743c56261ea92128433a261baab",
"assets/lib/Icons/Buttons/Freezer.png": "f459e3241818eccd1883ced6abed50e7",
"assets/lib/Icons/Buttons/Fridge.png": "e51439f1a139735a886f1984f5e2234e",
"assets/lib/Icons/Buttons/Login.png": "af92d32cb24a039c919d1dfd867cb6a2",
"assets/lib/Icons/Buttons/Partner%2520Login.png": "bdfb60951bcf630455ebc817ec404828",
"assets/lib/Icons/Buttons/Scan%2520Barcode.png": "044fb54a849a8d78ddb06c7414fcc827",
"assets/lib/Icons/Buttons/Scan%2520Items.png": "c0cb1e94b2790b7553f3852db5f8df5a",
"assets/lib/Icons/Buttons/Scan%2520Pantry.png": "9c764d7c1418535687ef80b8d10b2ba3",
"assets/lib/Icons/Buttons/Search%2520Icon.png": "865e7b68b937f7426d57abb932ab73af",
"assets/lib/Icons/Buttons/Shopping%2520List.png": "6aeb1348f8cabaf960e3f9cc59f4b73c",
"assets/lib/Icons/Buttons/Signup.png": "a6addeec635a265c2c129bad9d0ff4b6",
"assets/lib/Icons/Buttons/Upload.png": "cf5c528adcecf01fdd7be667a0c15470",
"assets/lib/Icons/Categories/Framed/Baby.png": "761ef60236ef865c2a4ed0dc6e6babf8",
"assets/lib/Icons/Categories/Framed/Bakery.png": "9fbcd9f687457dcd1c9bb7e894799aea",
"assets/lib/Icons/Categories/Framed/Beauty%2520&%2520Healthcare.png": "f49e896f4dcc38686163b44b3c46d325",
"assets/lib/Icons/Categories/Framed/Drinks.png": "646264199ee6fb2f15e3b350933544c6",
"assets/lib/Icons/Categories/Framed/Eggs,%2520Dairy%2520&%2520Fridge.png": "d2c5b6cd1af0f3af315a91ddce9b887d",
"assets/lib/Icons/Categories/Framed/Freezer.png": "2de77eca8bde0dc2c740bf4a01349096",
"assets/lib/Icons/Categories/Framed/Fruit%2520&%2520Veg.png": "8a1b0bf83fc4f451b7bbe4879ea6faf1",
"assets/lib/Icons/Categories/Framed/Household.png": "80ed3b007ac2355dd18957a869daacd7",
"assets/lib/Icons/Categories/Framed/Liquor.png": "7c7c266b29994e7d14e1f2520f778e51",
"assets/lib/Icons/Categories/Framed/Meat.png": "4877f68491d2c1cf4efc8cec29b9dd63",
"assets/lib/Icons/Categories/Framed/Pantry.png": "b6cce3e57741e229603343cb4f6ce70a",
"assets/lib/Icons/Categories/Framed/Pet.png": "86c20829366ef6f358b6781db628bc67",
"assets/lib/Icons/Home%2520Page/back_Button.png": "61004f47f3d20d6b1c45d020e71cf1b5",
"assets/lib/Icons/Home%2520Page/Menu%2520Button.png": "86043bd008f943f3a12508601ec32cec",
"assets/lib/Icons/Home%2520Page/Musketeer%2520Profile%2520Button.png": "71af6d3b1f028f61ba4ed8d8f5b76c04",
"assets/lib/Icons/Home%2520Page/Piggy%2520Bank%2520Empty.png": "c2843b1b2c57ac993102ec639a808255",
"assets/lib/Icons/Home%2520Page/Piggy%2520Bank%2520Full.png": "f3a4e1bec06ebe8e3b31a13e25ac19e6",
"assets/lib/Icons/logo/app_icon.png": "52cea168efcec0a00b4e88047305de94",
"assets/lib/Icons/logo/Musketeer%2520Loading.gif": "7945bcd6ec8fca772273bc6971b8e50a",
"assets/lib/Icons/logo/Musketeer%2520Loading.mp4": "21f703ac2fadce5ef4d756e9bb8a280a",
"assets/lib/Icons/logo/Musketeer.png": "573bc71b7fe562538032611894009851",
"assets/lib/Icons/Menu%2520Bar/Cart%2520Menu.png": "b5bb694e020a637e9a4828be1ea206aa",
"assets/lib/Icons/Menu%2520Bar/Categories%2520Menu.png": "b095fa6e6188d67381dffccc4068b54a",
"assets/lib/Icons/Menu%2520Bar/Home%2520Menu.png": "c4d781b7a1a18c425f955b8207077945",
"assets/lib/Icons/Menu%2520Bar/Pantry%2520Menu.png": "a7404d5ecf74fa5e0f89b6dae30a719b",
"assets/lib/Icons/Menu%2520Bar/Search%2520Menu.png": "fe52c958bcf7917c5fcd60a3f5bcd480",
"assets/lib/Icons/Miscell/1%25202%2520Price.png": "b4d98e02549cd2c570360453a8a26ed9",
"assets/lib/Icons/Miscell/Barcode.png": "446de3de5a00dfd09181217269e04762",
"assets/lib/Icons/Miscell/Calendar.png": "ae8f1c2ef907d5aa2f650a4cfb8752b8",
"assets/lib/Icons/Miscell/Camera.png": "02c9718a40d20bd8c178d4fa143c7e13",
"assets/lib/Icons/Watchlist/Cart.png": "8b40636fef43048f1917b60db45c4812",
"assets/lib/Icons/Watchlist/Minus.png": "ee0912dd424a2e7458914dfca6e842f3",
"assets/lib/Icons/Watchlist/Notify.png": "cc885985baf5f2e142513e36fc7733fe",
"assets/lib/Icons/Watchlist/Plus.png": "fa00675211245e67922c92691ef9d7d9",
"assets/lib/Icons/Watchlist/Watchlist.png": "1542d2e2198152a2f8f84c60b3b29f92",
"assets/NOTICES": "fa9b776af9a76d26fe7f56b13a8f6203",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "57d849d738900cfd590e9adc7e208250",
"assets/shaders/ink_sparkle.frag": "f8b80e740d33eb157090be4e995febdf",
"canvaskit/canvaskit.js": "76f7d822f42397160c5dfc69cbc9b2de",
"canvaskit/canvaskit.wasm": "f48eaf57cada79163ec6dec7929486ea",
"canvaskit/chromium/canvaskit.js": "8c8392ce4a4364cbb240aa09b5652e05",
"canvaskit/chromium/canvaskit.wasm": "fc18c3010856029414b70cae1afc5cd9",
"canvaskit/skwasm.js": "1df4d741f441fa1a4d10530ced463ef8",
"canvaskit/skwasm.wasm": "6711032e17bf49924b2b001cef0d3ea3",
"canvaskit/skwasm.worker.js": "19659053a277272607529ef87acf9d8a",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "6b515e434cea20006b3ef1726d2c8894",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "8929bcd33720f4a4b598b55e771fd59d",
"/": "8929bcd33720f4a4b598b55e771fd59d",
"main.dart.js": "de72f661d70a2955df9121405b08b317",
"manifest.json": "40acb8971efc3d262997c4b86a554905",
"version.json": "0d3ff53bad7d3f8d34e8d02b82652c21"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.json",
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
