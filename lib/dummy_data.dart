
import 'package:flutter/material.dart';

import 'models/category.dart';
import 'providers/meal.dart';

const DUMMY_CATEGORIES = [
  Category(
    id: 'c1',
    title: 'Soups',
    color: Colors.purple,
  ),
  Category(
    id: 'c2',
    title: 'Fast Food',
    color: Colors.red,
  ),
  Category(
    id: 'c3',
    title: 'Starters',
    color: Colors.orange,
  ),
  Category(
    id: 'c4',
    title: 'North Indian',
    color: Colors.amber,
  ),
  Category(
    id: 'c5',
    title: 'Breads',
    color: Colors.blue,
  ),
  Category(
    id: 'c6',
    title: 'Rice',
    color: Colors.green,
  ),
  Category(
    id: 'c7',
    title: 'South Indian',
    color: Colors.lightBlue,
  ),
  Category(
    id: 'c8',
    title: 'Chinese',
    color: Colors.lightGreen,
  ),
  Category(
    id: 'c9',
    title: 'Desserts',
    color: Colors.pink,
  ),
  Category(
    id: 'c10',
    title: 'Extra',
    color: Colors.teal,
  ),
];

final DUMMY_MEALS = [
  Meal(
    id: 'm1',
    categories: [
      'c1',
    ],
    title: 'Tomato',
    imageUrl:
    'https://www.funfoodfrolic.com/wp-content/uploads/2020/10/Tomato-Soup-Thumbnail.jpg',
    price: 40,
    description:
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy.",
    isJain: false,
    isSpicy: false,
    isMedium: true,
    isSweet: false,
  ),
  Meal(
    id: 'm2',
    categories: [
      'c1',
    ],
    title: 'Manchow',
    imageUrl:
    'https://c.ndtvimg.com/2020-09/ae7d9ct_manchow-soup_640x480_12_September_20.jpg',
    price: 60,
    description:
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy.",
    isJain: true,
    isSpicy: true,
    isMedium: false,
    isSweet: false,
  ),
  Meal(
    id: 'm3',
    categories: ['c1'],
    title: 'Hot & Sour',
    imageUrl:
    'https://www.vegrecipesofindia.com/wp-content/uploads/2021/07/hot-and-sour-soup-2.jpg',
    price: 50,
    description:
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy.",
    isJain: false,
    isSpicy: false,
    isMedium: false,
    isSweet: false,
  ),
  Meal(
    id: 'm4',
    categories: [
      'c1',
    ],
    title: 'Sweet Corn',
    imageUrl:
    'https://aartimadan.com/wp-content/uploads/2020/12/sweet-corn-soup.jpg',
    price: 55,
    description:
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy.",
    isJain: true,
    isSpicy: false,
    isMedium: true,
    isSweet: false,
  ),
  Meal(
    id: 'm5',
    categories: ['c2'],
    title: 'French Fries',
    imageUrl:
    'https://thecozycook.com/wp-content/uploads/2020/02/Copycat-McDonalds-French-Fries--500x500.jpg',
    price: 30,
    description:
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy.",
    isJain: false,
    isSpicy: true,
    isMedium: false,
    isSweet: false,
  ),
  Meal(
    id: 'm6',
    categories: ['c2'],
    title: 'Chaat',
    imageUrl:
    'https://www.vegrecipesofindia.com/wp-content/uploads/2021/09/papdi-chaat-2.jpg',
    price: 40,
    description:
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy.",
    isJain: false,
    isSpicy: false,
    isMedium: false,
    isSweet: false,
  ),
  Meal(
    id: 'm7',
    categories: [
      'c2',
    ],
    title: 'Burger',
    imageUrl:
    'https://st2.depositphotos.com/1000339/5752/i/600/depositphotos_57527967-stock-photo-burger-and-french-fries.jpg',
    price: 60,
    description:
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy.",
    isJain: true,
    isSpicy: false,
    isMedium: true,
    isSweet: false,
  ),
  Meal(
    id: 'm8',
    categories: [
      'c2',
    ],
    title: 'Hot Dog',
    imageUrl: 'https://ranveerbrar.com/wp-content/uploads/2021/02/hotdog.png',
    price: 50,
    description:
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy.",
    isJain: false,
    isSpicy: false,
    isMedium: true,
    isSweet: false,
  ),
  Meal(
    id: 'm9',
    categories: [
      'c2',
    ],
    title: 'Frankie',
    imageUrl:
    'https://www.indianhealthyrecipes.com/wp-content/uploads/2019/10/veg-roll-frankie.jpg',
    price: 60,
    description:
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy.",
    isJain: true,
    isSpicy: true,
    isMedium: false,
    isSweet: false,
  ),
  Meal(
    id: 'm10',
    categories: [
      'c3',
    ],
    title: 'Hara Bhara Kebab',
    imageUrl:
    'https://www.vegrecipesofindia.com/wp-content/uploads/2013/01/hara-bhara-kabab-recipe-1.jpg',
    price: 60,
    description:
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy.",
    isJain: false,
    isSpicy: false,
    isMedium: true,
    isSweet: false,
  ),
  Meal(
    id: 'm11',
    categories: [
      'c3',
    ],
    title: 'Paneer Chilly',
    imageUrl:
    'https://www.cookwithmanali.com/wp-content/uploads/2016/01/Chilli-Paneer-Restaurant-Style.jpg',
    price: 90,
    description:
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy.",
    isJain: true,
    isSpicy: true,
    isMedium: false,
    isSweet: false,
  ),
  Meal(
    id: 'm12',
    categories: [
      'c3',
    ],
    title: 'Spring Roll',
    imageUrl:
    'https://www.indianhealthyrecipes.com/wp-content/uploads/2013/12/spring-rolls.jpg',
    price: 40,
    description:
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy.",
    isJain: true,
    isSpicy: false,
    isMedium: true,
    isSweet: false,
  ),
  Meal(
    id: 'm13',
    categories: [
      'c3',
    ],
    title: 'Sizzler',
    imageUrl:
    'https://thumbs.dreamstime.com/b/sizzler-fresh-chicken-spaghetti-102092930.jpg',
    price: 60,
    description:
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy.",
    isJain: true,
    isSpicy: false,
    isMedium: false,
    isSweet: false,
  ),
  Meal(
    id: 'm14',
    categories: [
      'c3',
    ],
    title: 'Paneer Platter',
    imageUrl:
    'https://img-global.cpcdn.com/recipes/f3c20b91328a003d/1200x630cq70/photo.jpg',
    price: 70,
    description:
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy.",
    isJain: false,
    isSpicy: false,
    isMedium: true,
    isSweet: false,
  ),
  Meal(
    id: 'm15',
    categories: [
      'c4',
    ],
    title: 'Paneer Butter Masala',
    imageUrl:
    'https://www.vegrecipesofindia.com/wp-content/uploads/2020/01/paneer-butter-masala-5.jpg',
    price: 90,
    description:
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy.",
    isJain: false,
    isSpicy: true,
    isMedium: false,
    isSweet: false,
  ),
  Meal(
    id: 'm16',
    categories: [
      'c4',
    ],
    title: 'Tawa Kaju Paneer',
    imageUrl:
    'https://www.cookwithmanali.com/wp-content/uploads/2021/07/Kaju-Masala-Kaju-Curry.jpg',
    price: 50,
    description:
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy.",
    isJain: false,
    isSpicy: false,
    isMedium: true,
    isSweet: false,
  ),
  Meal(
    id: 'm17',
    categories: [
      'c4',
    ],
    title: 'Malai kofta',
    imageUrl:
    'https://carameltintedlife.com/wp-content/uploads/2020/11/Malai-Kofta-1-of-1-9.jpg',
    price: 60,
    description:
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy.",
    isJain: false,
    isSpicy: false,
    isMedium: false,
    isSweet: false,
  ),
  Meal(
    id: 'm18',
    categories: [
      'c4',
    ],
    title: 'Veg. Makhanvala',
    imageUrl:
    'https://www.archanaskitchen.com/images/archanaskitchen/0-Archanas-Kitchen-Recipes/2019/Vegetable_Makhanwala_Recipe_North_Indian_Punjabi_1.jpg',
    price: 50,
    description:
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy.",
    isJain: true,
    isSpicy: false,
    isMedium: true,
    isSweet: false,
  ),
  Meal(
    id: 'm19',
    categories: [
      'c4',
    ],
    title: 'Nargizi Do Pyaza',
    imageUrl:
    'https://media-cdn.tripadvisor.com/media/photo-s/10/02/c7/8f/nargisi-do-pyaza.jpg',
    price: 70,
    description:
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy.",
    isJain: false,
    isSpicy: true,
    isMedium: false,
    isSweet: false,
  ),
  Meal(
    id: 'm20',
    categories: [
      'c5',
    ],
    title: 'Fulka Roti',
    imageUrl: 'https://cdn.mos.cms.futurecdn.net/z9yrzoMFd7hcFnvjzNjv5P.jpg',
    price: 20,
    description:
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy.",
    isJain: true,
    isSpicy: false,
    isMedium: false,
    isSweet: false,
  ),
  Meal(
    id: 'm21',
    categories: [
      'c5',
    ],
    title: 'Parantha',
    imageUrl: 'https://www.lbf.co.in/media/brand/paratha-h.jpg',
    price: 30,
    description:
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy.",
    isJain: true,
    isSpicy: false,
    isMedium: false,
    isSweet: false,
  ),
  Meal(
    id: 'm22',
    categories: [
      'c5',
    ],
    title: 'Naan',
    imageUrl: 'https://static.toiimg.com/photo/53338316.cms',
    price: 30,
    description:
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy.",
    isJain: true,
    isSpicy: false,
    isMedium: false,
    isSweet: false,
  ),
  Meal(
    id: 'm23',
    categories: [
      'c5',
    ],
    title: 'Rumali Roti',
    imageUrl:
    'https://static.toiimg.com/thumb/64290244.cms?imgsize=261801&width=800&height=800',
    price: 30,
    description:
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy.",
    isJain: true,
    isSpicy: false,
    isMedium: false,
    isSweet: false,
  ),
  Meal(
    id: 'm24',
    categories: [
      'c5',
    ],
    title: 'Kulcha',
    imageUrl:
    'https://www.vegrecipesofindia.com/wp-content/uploads/2018/10/kulcha-recipe-1-500x500.jpg',
    price: 20,
    description:
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy.",
    isJain: false,
    isSpicy: false,
    isMedium: false,
    isSweet: false,
  ),
  Meal(
    id: 'm25',
    categories: [
      'c6',
    ],
    title: 'Steam Rice',
    imageUrl:
    'https://media.istockphoto.com/photos/cooked-rice-picture-id491090528?k=20&m=491090528&s=612x612&w=0&h=oKwbkVWhU_17ZBhB4v3SKOTGT85nmi2YS7KbPPa-x8o=',
    price: 20,
    description:
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy.",
    isJain: true,
    isSpicy: false,
    isMedium: false,
    isSweet: false,
  ),
  Meal(
    id: 'm26',
    categories: [
      'c6',
    ],
    title: 'Jeera Rice',
    imageUrl:
    'https://masalachilli.com/wp-content/uploads/2020/06/Instant-Pot-Jeera-Rice-2.jpg',
    price: 40,
    description:
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy.",
    isJain: true,
    isSpicy: false,
    isMedium: true,
    isSweet: false,
  ),
  Meal(
    id: 'm27',
    categories: [
      'c6',
    ],
    title: 'Biryani',
    imageUrl:
    'https://www.indianveggiedelight.com/wp-content/uploads/2020/04/veg-biryani-instant-pot-featured.jpg',
    price: 40,
    description:
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy.",
    isJain: true,
    isSpicy: false,
    isMedium: true,
    isSweet: false,
  ),
  Meal(
    id: 'm28',
    categories: [
      'c6',
    ],
    title: 'Fried Rice',
    imageUrl:
    'https://www.pavaniskitchen.com/wp-content/uploads/2021/08/schezwan-veg-fried-rice.jpg',
    price: 50,
    description:
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy.",
    isJain: true,
    isSpicy: true,
    isMedium: false,
    isSweet: false,
  ),
  Meal(
    id: 'm29',
    categories: [
      'c6',
    ],
    title: 'Pulao',
    imageUrl:
    'https://www.indianveggiedelight.com/wp-content/uploads/2017/09/coconut-milk-pulao-featured.jpg',
    price: 20,
    description:
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy.",
    isJain: true,
    isSpicy: false,
    isMedium: true,
    isSweet: false,
  ),
  Meal(
    id: 'm30',
    categories: [
      'c7',
    ],
    title: 'Idli Sambhar',
    imageUrl:
    'https://artofpalate.com/wp-content/uploads/2016/08/idli-with-rice-flour.jpg',
    price: 18,
    description:
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy.",
    isJain: false,
    isSpicy: false,
    isMedium: true,
    isSweet: false,
  ),
  Meal(
    id: 'm31',
    categories: [
      'c7',
    ],
    title: 'Dosa',
    imageUrl:
    'https://res.cloudinary.com/swiggy/image/upload/f_auto,q_auto,fl_lossy/ugw51hgi5iif9paj6ujb',
    price: 20,
    description:
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy.",
    isJain: true,
    isSpicy: false,
    isMedium: true,
    isSweet: false,
  ),
  Meal(
    id: 'm32',
    categories: [
      'c7',
    ],
    title: 'Uttampam',
    imageUrl:
    'https://www.carveyourcraving.com/wp-content/uploads/2020/04/Vegetable-uttapam-recipe.jpg',
    price: 40,
    description:
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy.",
    isJain: false,
    isSpicy: false,
    isMedium: true,
    isSweet: false,
  ),
  Meal(
    id: 'm33',
    categories: [
      'c7',
    ],
    title: 'Medu Wada',
    imageUrl:
    'http://im.rediff.com/travel-living/2015/apr/144302c33c547d28928409d18e3cf130093b56e8.jpg',
    price: 30,
    description:
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy.",
    isJain: true,
    isSpicy: false,
    isMedium: true,
    isSweet: false,
  ),
  Meal(
    id: 'm34',
    categories: [
      'c7',
    ],
    title: 'Uppam',
    imageUrl:
    'https://2.bp.blogspot.com/-pg3qT8boLOo/Wk9He2EZftI/AAAAAAAACbE/63OM34N6YukMM95-Lv3eWPh6g0SlnPMHgCEwYBhgL/s1600/Mixed%2BDal%2BVada%2Bin%2BAppam%2BPatra%2BRecipe%2B-%2B%25E0%25A4%25AE%25E0%25A4%25BF%25E0%25A4%2595%25E0%25A5%258D%25E0%25A4%25B8%25E0%25A5%258D%25E0%25A4%25A1%2B%25E0%25A4%25A6%25E0%25A4%25BE%25E0%25A4%25B2%2B%25E0%25A4%25B5%25E0%25A4%25BE%25E0%25A4%25A6%25E0%25A4%25BE%2B%25E0%25A4%2585%25E0%25A4%25AA%25E0%25A5%258D%25E0%25A4%25AA%25E0%25A4%25AE%2B%25E0%25A4%25AA%25E0%25A4%25A4%25E0%25A5%258D%25E0%25A4%25B0%2B%25E0%25A4%25AE%25E0%25A5%2587%25E0%25A4%2582%2B%2B%25E0%25A4%25B0%25E0%25A5%2587%25E0%25A4%25B8%25E0%25A4%25BF%25E0%25A4%25AA%25E0%25A5%2580%2B-%2BPriya%2BR%2B-%2BMagic%2Bof%2BIndian%2BRasoi%2B%25282%2529.JPG',
    price: 12,
    description:
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy.",
    isJain: false,
    isSpicy: false,
    isMedium: true,
    isSweet: false,
  ),
  Meal(
    id: 'm35',
    categories: [
      'c8',
    ],
    title: 'Dry Manchurian',
    imageUrl:
    'https://thatdeliciousdish.com/wp-content/uploads/2020/09/Dry-Manchurian-Recipe-3.jpg',
    price: 60,
    description:
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy.",
    isJain: true,
    isSpicy: false,
    isMedium: true,
    isSweet: false,
  ),
  Meal(
    id: 'm36',
    categories: [
      'c8',
    ],
    title: 'Hakka Noodles',
    imageUrl:
    'https://www.indianhealthyrecipes.com/wp-content/uploads/2021/07/hakka-noodles-recipe.jpg',
    price: 50,
    description:
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy.",
    isJain: true,
    isSpicy: false,
    isMedium: true,
    isSweet: false,
  ),
  Meal(
    id: 'm37',
    categories: [
      'c8',
    ],
    title: 'Schezwan Noodles',
    imageUrl:
    'https://www.cookwithmanali.com/wp-content/uploads/2021/08/Schezwan-Noodles.jpg',
    price: 40,
    description:
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy.",
    isJain: true,
    isSpicy: true,
    isMedium: false,
    isSweet: false,
  ),
  Meal(
    id: 'm38',
    categories: [
      'c8',
    ],
    title: 'Fried Rice',
    imageUrl:
    'https://www.pavaniskitchen.com/wp-content/uploads/2021/08/schezwan-veg-fried-rice.jpg',
    price: 50,
    description:
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy.",
    isJain: true,
    isSpicy: false,
    isMedium: true,
    isSweet: false,
  ),
  Meal(
    id: 'm39',
    categories: [
      'c8',
    ],
    title: 'Momos',
    imageUrl:
    'https://akm-img-a-in.tosshub.com/businesstoday/images/story/202112/momo_660_060817115337-sixteen_nine.jpg?size=1200:675',
    price: 60,
    description:
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy.",
    isJain: false,
    isSpicy: false,
    isMedium: true,
    isSweet: false,
  ),
  Meal(
    id: 'm40',
    categories: [
      'c9',
    ],
    title: 'Vanilla',
    imageUrl:
    'https://static.toiimg.com/thumb/54677722.cms?imgsize=134423&width=800&height=800',
    price: 70,
    description:
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy.",
    isJain: true,
    isSpicy: false,
    isMedium: false,
    isSweet: true,
  ),
  Meal(
    id: 'm41',
    categories: [
      'c9',
    ],
    title: 'Strawberry',
    imageUrl:
    'https://media.istockphoto.com/photos/strawberry-cream-ice-cream-in-white-bowl-picture-id678771308?k=20&m=678771308&s=612x612&w=0&h=Agfy1tHh7wXOx9zPnTmWbHb8byhEyyzVqqIQnEyL9UY=',
    price: 50,
    description:
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy.",
    isJain: true,
    isSpicy: false,
    isMedium: false,
    isSweet: true,
  ),
  Meal(
    id: 'm42',
    categories: [
      'c9',
    ],
    title: 'Chocolate',
    imageUrl:
    'https://www.daysoftheyear.com/cdn-cgi/image/dpr=1%2Cf=auto%2Cfit=cover%2Cgravity=auto%2Cheight=675%2Cmetadata=none%2Conerror=redirect%2Cq=85%2Cwidth=1200/wp-content/uploads/chocolate-ice-cream-day1-scaled.jpg',
    price: 60,
    description:
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy.",
    isJain: true,
    isSpicy: false,
    isMedium: false,
    isSweet: true,
  ),
  Meal(
    id: 'm43',
    categories: [
      'c9',
    ],
    title: 'American Dry Fruits',
    imageUrl:
    'https://4.imimg.com/data4/FI/OK/MY-9605641/american-dry-fruits-ice-creams-250x250.jpg',
    price: 80,
    description:
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy.",
    isJain: true,
    isSpicy: false,
    isMedium: false,
    isSweet: true,
  ),
  Meal(
    id: 'm44',
    categories: [
      'c9',
    ],
    title: 'Butter Scotch',
    imageUrl:
    'https://www.sidechef.com/recipe/a3b228d7-975f-4fda-a718-d20e6db3936a.jpeg?d=1408x1120',
    price: 90,
    description:
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy.",
    isJain: true,
    isSpicy: false,
    isMedium: false,
    isSweet: true,
  ),
  Meal(
    id: 'm45',
    categories: [
      'c10',
    ],
    title: 'Buttermilk',
    imageUrl:
    'https://www.vegrecipesofindia.com/wp-content/uploads/2021/05/masala-chaas-2.jpg',
    price: 30,
    description:
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy.",
    isJain: true,
    isSpicy: false,
    isMedium: false,
    isSweet: true,
  ),
  Meal(
    id: 'm46',
    categories: [
      'c10',
    ],
    title: 'Roasted Papad',
    imageUrl:
    'https://www.archanaskitchen.com/images/archanaskitchen/BasicRecipes_HOW_TO/How_to_roast_papad.jpg',
    price: 20,
    description:
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy.",
    isJain: true,
    isSpicy: false,
    isMedium: true,
    isSweet: false,
  ),
  Meal(
    id: 'm47',
    categories: [
      'c10',
    ],
    title: 'Fried Papad',
    imageUrl:
    'https://media.istockphoto.com/photos/indian-snacks-deep-fried-crackers-or-papad-mung-dal-and-urad-dal-an-picture-id666595984?k=20&m=666595984&s=612x612&w=0&h=rHJOP55EDO5Y6fplRSJpfaAS-eEchUgeQymtAIATL8M=',
    price: 40,
    description:
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy.",
    isJain: true,
    isSpicy: false,
    isMedium: true,
    isSweet: false,
  ),
  Meal(
    id: 'm48',
    categories: [
      'c10',
    ],
    title: 'Masala Papad',
    imageUrl:
    'https://previews.123rf.com/images/espies/espies2008/espies200800122/152805246-masala-papad-or%C3%A2%20papadum%C3%A2%20is-a-delicious-indian-snack-made-using-roasted-or-fried-papad-topped-with-.jpg',
    price: 50,
    description:
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy.",
    isJain: true,
    isSpicy: false,
    isMedium: true,
    isSweet: false,
  ),
  Meal(
    id: 'm49',
    categories: [
      'c10',
    ],
    title: 'Soft Drinks',
    imageUrl:
    'https://www.foodbeverageinsider.com/sites/foodbeverageinsider.com/files/FBI%20carbonated%20soft%20drinks.jpg',
    price: 10,
    description:
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy.",
    isJain: true,
    isSpicy: false,
    isMedium: true,
    isSweet: true,
  ),
];
