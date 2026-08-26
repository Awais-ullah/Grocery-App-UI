class foodDetail {
  String id;
  String image;
  String name;
  double price;
  double rate;
  String kcal;
  String cookingTime;
  String description;
  foodDetail({
    required this.id,
    required this.image,
    required this.name,
    required this.price,
    required this.rate,
    required this.kcal,
    required this.cookingTime,
    required this.description,
  });
}

List<foodDetail> foodItem = [
  foodDetail(
    id: '1',
    image: 'assets/images/burger.png',
    name: 'Royal Burger',
    price: 20,
    rate: 5.0,
    kcal: '150',
    cookingTime: '15 min',
    description: 'A delicious and satisfying burger made with a juicy grilled beef or chicken patty, fresh'
        ' lettuce, tomato, onion, cheese, and special sauce, all served in a soft toasted bun. Perfect '
        'for a flavorful and filling meal.',
  ),
  foodDetail(
    id: '2',
    image: 'assets/images/avocado.png',
    name: 'Avocado Salad',
    price: 12,
    rate: 4.5,
    kcal: '100',
    cookingTime: '20 min',
    description: 'A fresh and healthy salad made with creamy avocado, crisp vegetables, and a light lemon or olive oil dressing'
        'It rich in healthy fats,vitamins, and fiber, making it a nutritious and refreshing meal or side dish',
  ),
  foodDetail(
    id: '3',
    image: 'assets/images/nut.png',
    name: 'Mix nut',
    price: 9,
    rate: 4.9,
    kcal: '150',
    cookingTime: '15 min',
    description: 'Mixed nuts are a wholesome blend of almonds, cashews, walnuts, pistachios, and other '
        'premium nuts. Rich in healthy fats, protein, fiber, and essential nutrients, they make a '
        'crunchy, delicious, and nutritious snack for any time of the day',
  ),
  foodDetail(
    id: '4',
    image: 'assets/images/shake.png',
    name: 'Protein shake',
    price: 14,
    rate: 5.0,
    kcal: '200',
    cookingTime: '10 min',
    description: 'A protein shake is a nutritious drink made with high-quality protein, milk or water,'
        ' and optional fruits or nuts. It helps support muscle recovery, promotes growth, and provides'
        ' lasting energy, making it ideal after workouts or as a healthy snack.',
  ),
  foodDetail(
    id: '5',
    image: 'assets/images/diary.png',
    name: 'Diary Milk',
    price: 6,
    rate: 3.0,
    kcal: '100',
    cookingTime: '12 min',
    description: 'Dairy Milk is a smooth and creamy milk chocolate made with rich cocoa and fresh milk.'
        ' Its delicious taste and melt-in-your-mouth texture make it a favorite treat for chocolate lovers '
        'of all ages.',
  ),
  foodDetail(
    id: '6',
    image: 'assets/images/mango.png',
    name: 'Mango shake',
    price: 8,
    rate: 4.7,
    kcal: '150',
    cookingTime: '15 min',
    description: 'A refreshing and creamy drink made with ripe mangoes, chilled milk, and ice, blended to'
        ' perfection. Sweet, smooth, and full of tropical flavor, its the perfect beverage to cool down '
        'on a hot day.',
  ),
];
