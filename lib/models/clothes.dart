class Clothes{
  final String title;
  final String subtitle;
  final String price;
  final String imageUrl;
  List<String> dataiUrl;
  Clothes(this.title,this.subtitle,this.price,this.imageUrl,this.dataiUrl);
  static List<Clothes> generateClothes(){
    return[
      Clothes(
          'Gucci Oversized',
          'Hoodie',
          '\$98.44',
          'assets/images/arrival1.png',
          ['assets/images/arrival1.png',
            'assets/images/detail2.png']),
      Clothes(
          'Gucci Oversized',
          'Hoodie',
          '\$98.44',
          'assets/images/arrival2.png',
          ['assets/images/arrival1.png',
            'assets/images/detail2.png']),
      Clothes(
          'Gucci Oversized',
          'Hoodie',
          '\$98.44',
          'assets/images/detail2.png',
          ['assets/images/arrival1.png',
            'assets/images/detail2.png']),
      Clothes(
          'Gucci Oversized',
          'Hoodie',
          '\$98.44',
          'assets/images/detail3.png',
          ['assets/images/arrival1.png',
            'assets/images/detail2.png']), 
      Clothes(
          'Gucci Oversized',
          'Hoodie',
          '\$98.44',
          'assets/images/best1.png',
          ['assets/images/arrival1.png',
            'assets/images/detail2.png']), Clothes(
          'Gucci Oversized',
          'Hoodie',
          '\$98.44',
          'assets/images/arrival1.png',
          ['assets/images/arrival1.png',
            'assets/images/detail2.png']), Clothes(
          'Gucci Oversized',
          'Hoodie',
          '\$98.44',
          'assets/images/arrival1.png',
          ['assets/images/arrival1.png',
            'assets/images/detail2.png']), Clothes(
          'Gucci Oversized',
          'Hoodie',
          '\$98.44',
          'assets/images/arrival1.png',
          ['assets/images/arrival1.png',
            'assets/images/detail2.png']),




    ];
  }
}