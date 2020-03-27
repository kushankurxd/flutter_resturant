
class FoodItem{
  String name,time,type,price,image;
  FoodItem(this.name,this.time,this.type,this.price,this.image);
}

class CartItem{
  String name,count,price,image;
  CartItem(this.name,this.count,this.price,this.image);
}

class CouponItem{
  String image,code,name,description;
  CouponItem(this.image,this.code,this.name,this.description);
}

class Food{
  String image,name,type,discount,coupon,rating,time,price;
  Food(this.image,this.name,this.type,this.discount,this.coupon,this.rating,this.time,this.price);
}

class Payment{
  String image,name;
  Payment(this.image,this.name);
}

class DailyFood{
  List dailyFoodItemList;
  String status;

  DailyFood(this.dailyFoodItemList,this.status);
}

class DailyFoodItem{
  String image,name,type;
  DailyFoodItem(this.image,this.name,this.type);
}

class Plan{
  String price,validity;
  List planMenu;
  Plan(this.price,this.validity,this.planMenu);
}

class PlanMenu{
  String name,count;
  PlanMenu(this.name,this.count);
}

List titles = ['Food', 'Domestic', 'Entertainment', 'Contact'];
List items = [
  new FoodItem('Chicken Burger', '15 min', 'Burger', '25', 'img/hamburger.png'),
  new FoodItem('Icecream', '2 min', 'Dessert', '20', 'img/icecream.png'),
  new FoodItem('Cookies', '25 min', 'Starter', '10', 'img/cookie.png'),
  new FoodItem('Bread Toast', '10 min', 'Breakfast', '5', 'img/breakfast.png')
];

List cart = [];

int price = 0;
int discount = 0;
int planSelected = 0;
int totalPoints = 0;
int currentIndex = 0;

List studentPlanList = [];
List employeePlanList= [];
List othersPlanList = [];


String uID = "";
String planName = "";
String planPrice = "";
String planValidity = "";
String menuToday = "0";
String currentAddress = "";

List dailyFoodList = [];
