// 지도 초기화 변수
let map, markers = [], overlays = [];

// 지도 초기화 함수
function initializeMap2(stations, kakaoApiKey) {
    // 카카오 지도 API 로드
    const script = document.createElement('script');
    script.src = `//dapi.kakao.com/v2/maps/sdk.js?appkey=${kakaoApiKey}`;
    script.onload = () => {
        map = new kakao.maps.Map(document.getElementById('map'), {
            center: new kakao.maps.LatLng(37.5150, 126.9680),
            level: 6
        });

        const markerImage = new kakao.maps.MarkerImage(
            'https://i.postimg.cc/Wz9bQ15H/icon.png',
            new kakao.maps.Size(55, 54),
            { offset: new kakao.maps.Point(27, 69) }
        );

        stations.forEach(station => {
            const markerPosition = new kakao.maps.LatLng(station.LAT, station.LOT);
            const marker = new kakao.maps.Marker({
                position: markerPosition,
                image: markerImage,
                clickable: true
            });
            marker.setMap(map);
            markers.push(marker);

            const overlayContent = `<div class="customoverlay">
                    <a href="/board/?station=${encodeURIComponent(station.BLDN_NM)}" target="_blank">
                        <span class="title">${station.BLDN_NM}역</span>
                    </a>
                </div>`;
            const overlay = new kakao.maps.CustomOverlay({ position: markerPosition, content: overlayContent, yAnchor: 1 });
            overlay.setMap(map);
            overlays.push(overlay);

            // 마커 클릭 이벤트
            kakao.maps.event.addListener(marker, 'click', () => {
                map.setCenter(markerPosition); // 중앙으로 정렬
                map.setLevel(4);
                fetchRealtimeArrival(station.BLDN_NM);  // 역 이름으로 API 호출
            });
        });
    };
    document.head.appendChild(script);
}

// 실시간 도착 정보 요청 함수
function fetchRealtimeArrival(stationName) {
    // 서버와 통신하여 실시간 데이터를 가져옵니다.
    fetch(`/api/realtime?station_name=${encodeURIComponent(stationName)}`)
        .then(response => response.json())
        .then(data => {
            const infoDiv = document.getElementById('realtime-info');
            infoDiv.innerHTML = data.html_content || `<p>${stationName}역의 정보를 가져올 수 없습니다.</p>`;
        })
        .catch(error => {
            console.error('Error fetching real-time arrival info:', error);
            document.getElementById('realtime-info').innerHTML = '<p>실시간 정보를 가져오는 중 오류가 발생했습니다.</p>';
        });
}
