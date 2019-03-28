User.create!([
  {first_name: "Erin", last_name: "Jones", email: "ejones@gmail.com", password_digest: "$2a$10$CeHkmlAu.mhPkvPKD7t.LOctPplGYV7zkaZwtCS0AuMWpyRRFuyrC", household_id: nil},
  {first_name: "Karen ", last_name: "Jones", email: "kjones@gmail.com", password_digest: "$2a$10$mDQGzy1CQDzMJksvjhpn9uAuAAA6MmGMhbUf3w1CEjal6iNEGwMZy", household_id: 55},
  {first_name: "Jim", last_name: "Jones", email: "jjones@gmail.com", password_digest: "$2a$10$nspKw9g5/Yze8FcK/AqUZO4yq1TI/iiwpwBZ.Gu5N1PHVLfhJSHXi", household_id: 55},
  {first_name: "Michael", last_name: "Smith", email: "smith@gmail.com", password_digest: "$2a$10$flD2ylE6gtpdhWUHGlEUBezBpxYvfkphh01m0C3yADOvh2MBdDQny", household_id: nil}
])
Household.create!([
  {name: "Jones"},
  {name: "Smith"}
])
List.create!([
  {store_name: "Target", notes: "Pick up photos", household_id: 55, user_id: 59},
  {store_name: "CVS", notes: "", household_id: 55, user_id: 59},
  {store_name: "Ace Hardware", notes: "Check for tulip seeds", household_id: 55, user_id: 60},
  {store_name: "Whole Foods", notes: "", household_id: nil, user_id: 62},
  {store_name: "Trader Joe's", notes: "look for raw cashews", household_id: nil, user_id: 62}
])
Item.create!([
  {name: "broom", coupon_url: "", image_url: "", need_by_date: nil, list_id: 67, quantity: "", user_id: 59},
  {name: "GF bread", coupon_url: "https://www.rudisbakery.com/gluten-free/celiac-coupon/", image_url: "https://target.scene7.com/is/image/Target/GUEST_095b8de3-3382-454e-aa94-536d7fdbc1a6?wid=488&hei=488&fmt=pjpeg", need_by_date: nil, list_id: 67, quantity: "", user_id: 59},
  {name: "bandaids", coupon_url: "", image_url: "", need_by_date: nil, list_id: 68, quantity: "30pk", user_id: 59},
  {name: "Shampoo", coupon_url: "", image_url: "", need_by_date: nil, list_id: 68, quantity: "", user_id: 59},
  {name: "cake mix", coupon_url: "", image_url: "", need_by_date: "2019-03-30 00:00:00", list_id: 67, quantity: "", user_id: 60},
  {name: "socks", coupon_url: "", image_url: "", need_by_date: nil, list_id: 67, quantity: "", user_id: 60},
  {name: "soil", coupon_url: "", image_url: "", need_by_date: nil, list_id: 69, quantity: "8lbs", user_id: 60},
  {name: "cereal", coupon_url: "https://www.naturevalley.com/coupons/", image_url: "", need_by_date: nil, list_id: 67, quantity: "", user_id: 60},
  {name: "milk", coupon_url: "", image_url: "", need_by_date: nil, list_id: 67, quantity: "", user_id: 60},
  {name: "drywall screws", coupon_url: "", image_url: "https://products.coburnmyers.com/ImgMedium/691.png", need_by_date: nil, list_id: 69, quantity: "10", user_id: 60},
  {name: "bananas", coupon_url: "", image_url: "", need_by_date: nil, list_id: 70, quantity: "", user_id: 62},
  {name: "eggs", coupon_url: "", image_url: "", need_by_date: nil, list_id: 70, quantity: "6", user_id: 62},
  {name: "oranges", coupon_url: "", image_url: "", need_by_date: nil, list_id: 71, quantity: "", user_id: 62},
  {name: "berries", coupon_url: "", image_url: "", need_by_date: nil, list_id: 71, quantity: "", user_id: 62},
  {name: "onions", coupon_url: "", image_url: "", need_by_date: nil, list_id: 71, quantity: "", user_id: 62},
  {name: "scallions", coupon_url: "", image_url: "http://www.bestinseason.ie/wp-content/uploads/sites/5/2009/06/pic_scallions21.jpg", need_by_date: nil, list_id: 71, quantity: "", user_id: 62},
  {name: "coffee", coupon_url: "", image_url: "", need_by_date: nil, list_id: 71, quantity: "", user_id: 62},
  {name: "la croix lime", coupon_url: "", image_url: "", need_by_date: "2019-04-02 00:00:00", list_id: 71, quantity: "", user_id: 62}
])


