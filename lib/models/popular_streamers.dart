class PopularStreamersModel {
  final String? channel;
  final String? totalFollowers;
  final String? avatar;
  
  PopularStreamersModel({ this.channel, this.totalFollowers, this.avatar });

  static List<PopularStreamersModel> getPopularStreamersModel() {
    return <PopularStreamersModel>[
      PopularStreamersModel(
        channel: 'ninja', 
        totalFollowers: '17.5 M', 
        avatar: 'https://static-cdn.jtvnw.net/jtv_user_pictures/560da9e4-3229-4f91-98ff-9327c63f5c03-profile_image-300x300.png'
      ),
      PopularStreamersModel(
        channel: 'auronplay', 
        totalFollowers: '12.2 M', 
        avatar: 'https://static-cdn.jtvnw.net/jtv_user_pictures/ec898e4a-e0df-4dc0-a99d-7540c6dbe1e8-profile_image-300x300.png'
      ),
      PopularStreamersModel(
        channel: 'rubius', 
        totalFollowers: '11.5 M', 
        avatar: 'https://static-cdn.jtvnw.net/jtv_user_pictures/a2592e98-5ba6-4c9a-9d9e-cf036d6f64c2-profile_image-300x300.jpg'
      ),
      PopularStreamersModel(
        channel: 'tfue', 
        totalFollowers: '10.9 M', 
        avatar: 'https://static-cdn.jtvnw.net/jtv_user_pictures/82b63a01-628f-4c81-9b05-dd3a5011fdda-profile_image-300x300.png'
      ),
      PopularStreamersModel(
        channel: 'xqcow', 
        totalFollowers: '10.2 M', 
        avatar: 'https://static-cdn.jtvnw.net/jtv_user_pictures/xqcow-profile_image-9298dca608632101-300x300.jpeg'
      ),
    ];
  }
}