class LiveInfo {
  final String? title;
  final String? channel;
  final String? views;
  final String? thumbnail;
  final String? avatar;
  
  LiveInfo({ this.title, this.channel, this.views, this.thumbnail, this.avatar });

  static List<LiveInfo> getLiveInfo() {
    return <LiveInfo>[
      LiveInfo(
        title: 'Será que vocês estão mesmo preparados?', 
        channel: 'alanzoka', 
        views: '40,9 K', 
        thumbnail: 'assets/images/alanzoka.png',
        avatar: 'https://static-cdn.jtvnw.net/jtv_user_pictures/15cec952-c1ba-4ff8-a79c-53c2fa5bd269-profile_image-150x150.png'
      ),
      LiveInfo(
        title: 'FLAMENGO X VASCO - SEMIFINAL DO CAMPEONATO CARIOCA 2022 - AO VIVO!', 
        channel: 'casimito', 
        views: '20,1 K', 
        thumbnail: 'assets/images/casimiro.png',
        avatar: 'https://static-cdn.jtvnw.net/jtv_user_pictures/32805a78-d927-48bd-8089-bf5efed53ea4-profile_image-150x150.png'
      ),
      LiveInfo(
        title: 'YODA MATANDO O ULTIMO BOSS', 
        channel: 'YoDa', 
        views: '19,5 K', 
        thumbnail: 'assets/images/yoda.png',
        avatar: 'https://static-cdn.jtvnw.net/jtv_user_pictures/1cce6c41-aaf8-44c2-ad1b-ef76fb0eede3-profile_image-150x150.png'
      ),
      LiveInfo(
        title: 'GODSENT vs Players ESL Pro League Season 15', 
        channel: 'gaules', 
        views: '20,6 K', 
        thumbnail: 'assets/images/gaules.png',
        avatar: 'https://static-cdn.jtvnw.net/jtv_user_pictures/f4b12683-57ff-4b57-926a-67512b43a7ff-profile_image-150x150.png'
      ),
      LiveInfo(
        title: 'FINAL - LA COPA | GRANDE FINAL', 
        channel: 'nobru', 
        views: '50,4 K', 
        thumbnail: 'assets/images/nobru.png',
        avatar: 'https://static-cdn.jtvnw.net/jtv_user_pictures/2860bc62-377d-40da-918b-470b2afe08e8-profile_image-150x150.png'
      ),
    ];
  }
}