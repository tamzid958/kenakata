class Product {
  final String image, title, description, measuredunit, shopNameByIdPerProduct;
  final int price, size, id;
  final bool wishlist;
  Product({
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.size,
    this.wishlist,
    this.measuredunit,
    this.shopNameByIdPerProduct,
  });
}

List<Product> products = [
  Product(
    id: 1,
    title: "Egg",
    price: 75,
    measuredunit: "Piece",
    shopNameByIdPerProduct: "Ratna Shop",
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    image: "assets/images/egg.jpg",
    wishlist: true,
  ),
  Product(
    id: 2,
    title: "Onion",
    price: 75,
    measuredunit: "KG",
    shopNameByIdPerProduct: "Ratna Shop",
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    image: "assets/images/onions.jpg",
    wishlist: false,
  ),
  Product(
    id: 3,
    title: "Egg",
    price: 75,
    measuredunit: "Piece",
    shopNameByIdPerProduct: "Ratna Shop",
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    image: "assets/images/egg.jpg",
    wishlist: true,
  ),
  Product(
    id: 4,
    title: "Egg",
    price: 75,
    measuredunit: "Piece",
    shopNameByIdPerProduct: "Ratna Shop",
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    image: "assets/images/egg.jpg",
    wishlist: false,
  ),
  Product(
    id: 5,
    title: "Onion",
    price: 75,
    measuredunit: "KG",
    shopNameByIdPerProduct: "Ratna Shop",
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    image: "assets/images/onions.jpg",
    wishlist: true,
  ),
  Product(
    id: 6,
    title: "Egg",
    price: 75,
    measuredunit: "Piece",
    shopNameByIdPerProduct: "Ratna Shop",
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    image: "assets/images/egg.jpg",
    wishlist: true,
  ),
  Product(
    id: 7,
    title: "Onion",
    price: 75,
    measuredunit: "KG",
    shopNameByIdPerProduct: "Ratna Shop",
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    image: "assets/images/onions.jpg",
    wishlist: false,
  ),
  Product(
    id: 8,
    title: "Egg",
    price: 75,
    measuredunit: "Piece",
    shopNameByIdPerProduct: "Ratna Shop",
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    image: "assets/images/egg.jpg",
    wishlist: true,
  ),
  Product(
    id: 9,
    title: "Onion",
    price: 75,
    measuredunit: "KG",
    shopNameByIdPerProduct: "Ratna Shop",
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    image: "assets/images/onions.jpg",
    wishlist: false,
  ),
  Product(
    id: 10,
    title: "Egg",
    price: 75,
    measuredunit: "Piece",
    shopNameByIdPerProduct: "Ratna Shop",
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    image: "assets/images/egg.jpg",
    wishlist: false,
  ),
  Product(
    id: 11,
    title: "Onion",
    price: 75,
    measuredunit: "KG",
    shopNameByIdPerProduct: "Ratna Shop",
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    image: "assets/images/onions.jpg",
    wishlist: false,
  ),
  Product(
    id: 12,
    title: "Egg",
    price: 75,
    measuredunit: "Piece",
    shopNameByIdPerProduct: "Ratna Shop",
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    image: "assets/images/egg.jpg",
    wishlist: true,
  ),
];
