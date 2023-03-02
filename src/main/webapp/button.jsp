<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<footer>
     <!-- footer start -->
    <div id="footer">
        <div class="footer_inner">
            <div class="f_menu_wrap">
                <div class="f_menu">
                    <ul>
                        <li><a href="#" class="">이메일 무단 수집 거부</a></li>
                        <li><a href="#" class="">이용약관</a>
                        </li>
                        <li class="policy"><a
                                href="#"
                                class="">개인정보 처리방침</a></li>
                        <li><a href="#">고객센터</a></li>

                    </ul>
                    <div class="family_site">
                        <script>
                            function move_site() {
                                if ($('#fsite').val() == '') {
                                    alert("사이트를 선택해주세요.");
                                    $('#fsite').focus();
                                    return;
                                } else {
                                    window.open($('#fsite').val(), '_target', '');
                                }
                            }
                        </script>
                        <label for="fsite" class="blind">패밀리사이트</label>
                        <select name="fsite" id="fsite" title="패밀리사이트">
                            <option value="" selected="selected">패밀리사이트</option>
                                                            <option
                                    value="#">스마트푸드네트웍스</option>
                                                        </select>
                        <a href="javascript:move_site();" class="btn_rectangle black" title="새창열림">이동</a>
                    </div><!-- //family_site -->
                </div><!-- //f_menu -->

            </div><!-- //f_menu_wrap -->

            <div class="f_info cf">
                <div class="info info01">
                    <h3 class="title">스마트푸드네트웍스 주식회사 <br><span class="copy">&copy; 2020 by Smart Food Networks Corp. All rights reserved.</span>
                    </h3>
                    <p style="display: none;">스마트푸드네트웍스 주식회사</p>
                    <p>주소 : 서울특별시 강남구 남부순환로 2753, 3층                        (우)06274</p>
                    <p>대표자 : 조성수, 김민정<span class="bar"> | </span>사업자등록번호
                        : 719-87-01744 <a
                            href="#"
                            title="사업자정보확인(새창열림)" target="_blank" class="nyroModal" style="display:none;">[사업자정보 확인]</a>
                    </p>
                    <p>통신판매번호 : 제2022-서울강남-01377호                </div>
                <div class="info info02">
                    <h3 class="title">
                        고객센터 1522-4935
                        <span id="kakaotalk-channel"></span>
                    </h3>

                    <div class="time">
                        <p>평일 : AM 10:00 ~ PM 05:00 (주말, 공휴일 휴무)</p>
                        <p>점심시간 : PM 12:00 ~ PM 01:00</p>
                        <p>이메일 : help@smartfoodnet.co.kr</p>
                    </div>
                    <p>* 전화통화가 어려운 경우 카카오톡채널로 문의주시면</p>
                    <p>&nbsp;&nbsp;빠른 답변을 받으실 수 있습니다 *</p>
                </div>
                <script>
                    (function () {
                        Kakao.init('bfe08933b5efa69b618f2d670b52b22e');
                        if (Kakao.isInitialized()) {
                            Kakao.Channel.createAddChannelButton({
                                container: '#kakaotalk-channel',
                                channelPublicId: '_ckAxdxj'
                            });
                        }
                    })();
                </script>
                <div class="info info03">
                    <h3 class="title">KCP 구매안전서비스</h3>
                    <div class="fl">
                        <img src="https://freshon.market/asset/images/NHN_KCP_Escrow.gif" alt="에스크로 가입여부 확인" title="에스크로 가입여부 확인"/>
                    </div>
                    <div class="txt_wrap fl">
                        <p>고객님은 안전거래를 위해 현금등으로 모든거래 </p>
                        <p>결제시 저희 쇼핑몰에서 가입한 KCP의</p>
                        <p>구매안전서비스를 이용하실 수 있습니다.</p>
                        <p>
                            <a href="#"
                               target="_blank"
                               class="kcppop">[가입사실확인]</a></p>
                        <script>
                            $(function () {
                                $(".kcppop").nyroModal();
                            });
                        </script>
                    </div>
                    
                </div>
                
            </div><!-- //f_info -->

        </div><!-- //footer_inner -->

    </div><!-- //footer -->
    
</footer>