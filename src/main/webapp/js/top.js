/**
 * 
 */
    (function () {
            window.dataLayer = window.dataLayer || [];
                        window.dataLayer.push({
                'isLogin': 'N'
            });
                    })();
    (function (w, d, s, l, i) {
            w[l] = w[l] || [];
            w[l].push({'gtm.start': new Date().getTime(), event: 'gtm.js'});
            var f = d.getElementsByTagName(s)[0], j = d.createElement(s), dl = l != 'dataLayer' ? '&l=' + l : '';
            j.async = true;
            j.src = 'https://www.googletagmanager.com/gtm.js?id=' + i + dl;
            f.parentNode.insertBefore(j, f);
        })(window, document, 'script', 'dataLayer', 'GTM-M96P94R');
        
    (function (w, d, s, l, i) {
            w[l] = w[l] || [];
            w[l].push({'gtm.start': new Date().getTime(), event: 'gtm.js'});
            var f = d.getElementsByTagName(s)[0], j = d.createElement(s), dl = l != 'dataLayer' ? '&l=' + l : '';
            j.async = true;
            j.src = 'https://www.googletagmanager.com/gtm.js?id=' + i + dl;
            f.parentNode.insertBefore(j, f);
        })(window, document, 'script', 'dataLayer', 'GTM-NTCMHLH');

        /**
         * wcs 공통스크립트 딱 한 번만 호출되는 헬퍼함수
         *
         * @private
         */
        function __wcs_do() {
            window.wcs_add = window.wcs_add || {};
            window.wcs_add["wa"] = 's_3b44bba7259a';

            window._nasa = window._nasa || {};

            if (window.wcs) {
                window.wcs.inflow('freshon.market');
                window.wcs_do(_nasa);

                // __wcs_do가 한 번 호출된 후
                // 중복호출을 막는다.
                window.__wcs_do = function () {
                };
            }
        }
        
        !function (f, b, e, v, n, t, s) {
            if (f.fbq) return;
            n = f.fbq = function () {
                n.callMethod ?
                    n.callMethod.apply(n, arguments) : n.queue.push(arguments)
            };
            if (!f._fbq) f._fbq = n;
            n.push = n;
            n.loaded = !0;
            n.version = '2.0';
            n.queue = [];
            t = b.createElement(e);
            t.async = !0;
            t.src = v;
            s = b.getElementsByTagName(e)[0];
            s.parentNode.insertBefore(t, s)
        }(window, document, 'script',
            'https://connect.facebook.net/en_US/fbevents.js');
        fbq('init', '423931126480503');
        fbq('track', 'PageView');



    (function () {
        function ChannelIOEventManager() {
            this.queue = [];
        }

        Object.assign(ChannelIOEventManager.prototype, {

            /**
             * 사용자 프로필 업데이트 이벤트를 이벤트큐에 추가한다.
             *
             * @param profile {Object} 채널톡 profile 프로퍼티 정보
             */
            updateUserProfile: function (profile) {
                this.queue.push(['updateUser', {
                    profile: profile
                }]);
            },

            poll: function () {
                return this.queue.shift();
            }
        });

        window.ChannelIOEventManager = new ChannelIOEventManager();
    })();
