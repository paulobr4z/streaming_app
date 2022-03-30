class TopCategoriesModel {
  final String? title;
  final String? imageUrl;
  
  TopCategoriesModel({ this.title, this.imageUrl });

  static List<TopCategoriesModel> getTopCategoriesModel() {
    return <TopCategoriesModel>[
      TopCategoriesModel(
        title: 'Just chatting', 
        imageUrl: 'https://static-cdn.jtvnw.net/ttv-boxart/509658-210x280.jpg'
      ),
      TopCategoriesModel(
        title: 'League of legends', 
        imageUrl: 'https://static-cdn.jtvnw.net/ttv-boxart/21779-210x280.jpg'
      ),
      TopCategoriesModel(
        title: 'Valorant', 
        imageUrl: 'https://static-cdn.jtvnw.net/ttv-boxart/516575-210x280.jpg'
      ),
      TopCategoriesModel(
        title: 'Grand theft auto V', 
        imageUrl: 'https://static-cdn.jtvnw.net/ttv-boxart/32982-210x280.jpg'
      ),
      TopCategoriesModel(
        title: 'Fortnite', 
        imageUrl: 'https://static-cdn.jtvnw.net/ttv-boxart/33214-210x280.jpg',
      ),
      TopCategoriesModel(
        title: 'Counter-Strike: Global offensive', 
        imageUrl: 'https://static-cdn.jtvnw.net/ttv-boxart/32399-210x280.jpg',
      ),
    ];
  }
}