import 'package:etrade_actions/features/shop/models/brand_model.dart';
import 'package:etrade_actions/features/shop/models/category_model.dart';
import 'package:etrade_actions/features/shop/models/product_attribute_model.dart';
import 'package:etrade_actions/features/shop/models/product_model.dart';
import 'package:etrade_actions/features/shop/models/product_variation_model.dart';
import 'package:etrade_actions/utils/constants/image_strings.dart';

class TDummyData {
  // static final List<BannerModel> banners = [ BannerModel (imageUrt: TImages.banner1, targetScreen: TRoutes.order, active: false), BannerModel (imageUrl: TImages.banner2, targetScreen: TRoutes.cart, active: true), BannerModel(imageUrt: TImages.banners, targetScreen: TRoutes. favourites, active: true), BannerModel (imageUrt: TImages.banner4, targetScreen: TRoutes.search, active: true), BannerModel (imageUrl: TImages.banners, targetScreen: TRoutes.settings, active: true), BannerModel (imageUr: TImages.banner, targetScreen: TRoutes.UserAddress, active: true), BannerModel (imageUrl: TImages. banner8, targetScreen: TRoutes.checkout, active: false), ];

  static final List<CategoryModel> categories = [
    CategoryModel(
      id: '1',
      image: TImages.sportIcon,
      name: 'Sports',
      isFeatured: true,
    ),
    CategoryModel(
      id: '2',
      image: TImages.furnitureIcon,
      name: 'Furniture',
      isFeatured: true,
    ),
    CategoryModel(
      id: '3',
      image: TImages.electronicsIcon,
      name: 'Electronics',
      isFeatured: true,
    ),
    CategoryModel(
      id: '4',
      image: TImages.clothIcon,
      name: 'Clothes',
      isFeatured: true,
    ),
    CategoryModel(
      id: '5',
      image: TImages.animalIcon,
      name: 'Animals',
      isFeatured: true,
    ),
    CategoryModel(
      id: '6',
      image: TImages.shoeIcon,
      name: 'Shoes',
      isFeatured: true,
    ),
    CategoryModel(
      id: '7',
      image: TImages.cosmeticsIcon,
      name: 'Cosmetics',
      isFeatured: true,
    ),
    CategoryModel(
      id: '14',
      image: TImages.jeweleryIcon,
      name: 'Jewelery',
      isFeatured: true,
    ),
    // Subcategories
    CategoryModel(
      id: '8',
      image: TImages.sportIcon,
      name: 'Sport Shoes',
      parentId: '1',
      isFeatured: false,
    ),
    CategoryModel(
      id: '9',
      image: TImages.sportIcon,
      name: 'Track suits',
      parentId: '1',
      isFeatured: false,
    ),
    CategoryModel(
      id: '10',
      image: TImages.sportIcon,
      name: 'Sports Equipments',
      parentId: '1',
      isFeatured: false,
    ),
    // Furniture
    CategoryModel(
      id: '11',
      image: TImages.furnitureIcon,
      name: 'Bedroom furniture',
      parentId: '5',
      isFeatured: false,
    ),
    CategoryModel(
      id: '12',
      image: TImages.furnitureIcon,
      name: 'Kitchen furniture',
      parentId: '5',
      isFeatured: false,
    ),
    CategoryModel(
      id: '13',
      image: TImages.furnitureIcon,
      name: 'Office furniture',
      parentId: '5',
      isFeatured: false,
    ),
    // Electronics
    CategoryModel(
      id: '14',
      image: TImages.electronicsIcon,
      name: 'Laptop',
      parentId: '2',
      isFeatured: false,
    ),
    CategoryModel(
      id: '15',
      image: TImages.electronicsIcon,
      name: 'Mobile',
      parentId: '2',
      isFeatured: false,
    ),
    CategoryModel(
      id: '16',
      image: TImages.clothIcon,
      name: 'Shirts',
      parentId: '3',
      isFeatured: false,
    ),
  ];


  static final List<ProductModel> products = [
  ProductModel(
    id: "801",
    title: 'Green Nike sports shoe',
    stock: 15,
    price: 135,
    isFeatured: true,
    thumbnail: TImages.productImage1,
    description: 'Green Nike sports shoe',
    brand: BrandModel(
      id: '1',
      image: TImages.nikeLogo,
      name: 'Nike',
      productsCount: 265,
      isFeatured: true,
    ),
    images: [
      TImages.productImage1,
      TImages.productImage23,
      TImages.productImage21,
      TImages.productImage9,
    ],
    salePrice: 30,
    sku: 'ABR4568',
    categoryId: '1',
    productAttributes: [
      ProductAttributeModel(name: 'Color', values: ['Green', 'Black', 'Red']),
      ProductAttributeModel(name: 'Size', values: ['EU 30', 'EU 32', 'EU 34']),
    ],
    productVariations: [
      ProductVariationModel(
        id: '1',
        stock: 34,
        price: 134,
        salePrice: 122.6,
        image: TImages.productImage1,
        description: 'This is a Product description for Green Nike sports shoe.',
        attributeValues: {'Color': 'Green', 'Size': 'EU 34'},
      ),
      ProductVariationModel(
        id: '2',
        stock: 34,
        price: 134,
        salePrice: 122.6,
        image: TImages.productImage1,
        description: 'This is a Product description for Green Nike sports shoe.',
        attributeValues: {'Color': 'Green', 'Size': 'EU 34'},
      ),
      ProductVariationModel(
        id: '3',
        stock: 15,
        price: 132,
        image: TImages.productImage23,
        attributeValues: {'Color': 'Black', 'Size': 'EU 32'},
      ),
      ProductVariationModel(
        id: '4',
        stock: 222,
        price: 232,
        image: TImages.productImage1,
        attributeValues: {'Color': 'Green', 'Size': 'EU 32'},
      ),
      ProductVariationModel(
        id: '5',
        stock: 0,
        price: 334,
        image: TImages.productImage21,
        attributeValues: {'Color': 'Red', 'Size': 'EU 34'},
      ),
      ProductVariationModel(
        id: '6',
        stock: 11,
        price: 332,
        image: TImages.productImage21,
        attributeValues: {'Color': 'Red', 'Size': 'EU 32'},
      ),
    ],
    productType: 'ProductType.variable',
  ),

  ProductModel(
    id: "802",
    title: 'Blue Adidas sports shoe',
    stock: 20,
    price: 120,
    isFeatured: true,
    thumbnail: TImages.productImage22,
    description: 'Blue Adidas sports shoe',
    brand: BrandModel(
      id: '2',
      image: TImages.adidasLogo,
      name: 'Adidas',
      productsCount: 200,
      isFeatured: true,
    ),
    images: [
      TImages.productImage22,
      TImages.productImage28,
    ],
    salePrice: 25,
    sku: 'ABR5679',
    categoryId: '2',
    productAttributes: [
      ProductAttributeModel(name: 'Color', values: ['Blue', 'Black', 'White']),
      ProductAttributeModel(name: 'Size', values: ['EU 36', 'EU 38', 'EU 40']),
    ],
    productVariations: [
      ProductVariationModel(
        id: '7',
        stock: 25,
        price: 110,
        salePrice: 100,
        image: TImages.productImage22,
        description: 'This is a Product description for Blue Adidas sports shoe.',
        attributeValues: {'Color': 'Blue', 'Size': 'EU 36'},
      ),
      ProductVariationModel(
        id: '8',
        stock: 30,
        price: 120,
        image: TImages.productImage22,
        description: 'This is a Product description for Blue Adidas sports shoe.',
        attributeValues: {'Color': 'Blue', 'Size': 'EU 38'},
      ),
      ProductVariationModel(
        id: '9',
        stock: 20,
        price: 120,
        image: TImages.productImage22,
        description: 'This is a Product description for Blue Adidas sports shoe.',
        attributeValues: {'Color': 'Blue', 'Size': 'EU 40'},
      ),
    ],
    productType: 'ProductType.variable',
  ),
];

}
