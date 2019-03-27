Favorite.create!([
  {user_id: 1, location_id: 1},
  {user_id: 1, location_id: 7},
  {user_id: 1, location_id: 2}
])
Location.create!([
  {name: "Wilson Skate Park", address: "W Wilson Ave, Chicago, IL 60640", image_url: "https://w82.com/wp/wp-content/uploads/2014/06/xWILSON.jpg.pagespeed.ic.BYibNAmeS4.jpg", weblink: "https://www.chicagoparkdistrict.com/parks-facilities/wilson-skate-park", description: "Outdoor skate park for all wheels"},
  {name: "Logan Skate Park", address: "N. Western Ave. and Logan Blvd.  Chicago, IL 60647", image_url: "https://assets.chicagoparkdistrict.com/s3fs-public/styles/558x314/public/images/locations/fd6a140e12c74c0db940f23a53f95fab1.JPG?itok=qP_4qQni", weblink: "https://www.chicagoparkdistrict.com/parks-facilities/logan-boulevard-skate-park-0", description: "Covered outdoor skate park for all wheels"},
  {name: "The Rink", address: "1122 E 87th St, Chicago, IL 60619", image_url: "https://melmagazine.com/wp-content/uploads/2018/08/15uHfhwL2BRN5w2AnmrrBrw.jpeg", weblink: "http://www.therinkchicago.com/", description: "Indoor rink for skates and blades"},
  {name: "Lakefront Trail", address: "5301 N Sheridan Rd Chicago IL ", image_url: "http://s3.amazonaws.com/architecture-org/files/pages/lakefront-trail-steve-vance-cc.jpg", weblink: "https://www.chicagoparkdistrict.com/parks-facilities/lakefront-trail", description: "Outdoor paved trail along Lake Michigan"},
  {name: "Grant Skate Park", address: "1135 S Michigan Ave, Chicago, IL 60605", image_url: "https://assets.chicagoparkdistrict.com/s3fs-public/styles/558x314/public/images/locations/grant-skating.jpg?itok=Iboyh4WX", weblink: "https://www.chicagoparkdistrict.com/parks-facilities/skate-parks", description: "Outdoor skate park for all wheels"},
  {name: "McFetridge Sports Center", address: "3843 N California Ave, Chicago, IL 60618", image_url: "http://mcfetridgesportscenter.com/wp-content/uploads/2013/05/McF3-421_375.jpg", weblink: "http://mcfetridgesportscenter.com/", description: "Indoor ice rink offering year round classes"},
  {name: "Maggie Daley Park Skating Ribbon", address: "337 E Randolph St, Chicago, IL 60601", image_url: "http://asiancampustribune.com/wp-content/uploads/2016/12/Ribbonskate.jpg", weblink: "https://maggiedaleypark.com/things-to-do-see/skating-ribbon/", description: "Outdoor trail for ice skating during winter months"},
  {name: "Fleetwood Roller Rink", address: "7231 W Archer Ave Summit, IL 60501", image_url: "https://res.cloudinary.com/dostuff-media/image/upload//c_fill,g_faces,h_630,w_1200/v1512080553/venue-413006.jpg", weblink: "https://www.fleetwoodrollerrink.com/", description: "Skates and blades welcome in this indoor rink space"},
  {name: "The 606", address: "Chicago, IL 60647", image_url: "https://farm9.staticflickr.com/8883/18533188342_f21794db6f_b.jpg", weblink: "https://www.the606.org/", description: "Free, outdoor paved trail welcoming all wheels"},
  {name: "La Bodega", address: "1934 N Campbell Ave Chicago, IL 60647", image_url: "https://scontent-ort2-1.xx.fbcdn.net/v/t1.0-9/52942901_10106221767829499_7736965000526299136_n.jpg?_nc_cat=101&_nc_ht=scontent-ort2-1.xx&oh=5864a735ddbe25c0e8ef8e45f12a3cb2&oe=5D1FC2CF", weblink: "https://www.facebook.com/groups/ChicagoShred/", description: "Indoor ramps available for classes and open skates for a small fee"}
])
User.create!([
  {name: "Shred Beans & Rice", email: "shred@gmail.com", password_digest: "$2a$10$rZdzpFl1pSlOKjITuiRR8upwDa/da9bxKYzjnY.YDew9BWw4SEL7K"},
  {name: "Luna Tic", email: "luna@gmail.com", password_digest: "$2a$10$3XEDRwsqhjr712KXSqy6LuKz9hUgBaBJLiu/7YkXLckIIyJmFDoH."},
  {name: "Smackery Binx", email: "Binx@gmail.com", password_digest: "$2a$10$nBWRW08SLDAzFd7cFIGLwOLlgHCOBb6u5u.W3pRU/ZTuGgqyq5QUi"},
  {name: "Smackery Binx", email: "binx@gmail.com", password_digest: "$2a$10$STzUfDB4N/uQkA95HlPfyOVepgYK5N.yKBg5eEDO1Ham0CS6GE656"},
  {name: "Kid Vicious", email: "vicious@gmail.com", password_digest: "$2a$10$kNVA9/nOzxvCczLJ0bQDnurJlXoh4xCqd0tgb6dzw/deQa7M8Pj26"},
  {name: "Amanda Hale", email: "amanda@gmail.com", password_digest: "$2a$10$vsQooanmdohbfG0xG1RNE.4X7rsWIwMOt6X9MpxSlx0vejjz/9mD."},
  {name: "Hawkeye Fierce", email: "hawkeye@gmail.com", password_digest: "$2a$10$7uJ/ehPMNVWbmt8BvACxV.H/3c6qeE5.PGDN/IRazye2yjL.7Oq2y"},
  {name: "joe", email: "joe@gmail.com", password_digest: "$2a$10$5ZUpFZfv1SzZI7Uo9bTg1usf0jpj6AfGZNcugi1TebIgnAAU8uUWq"},
  {name: "rachel", email: "rachel@gmail.com", password_digest: "$2a$10$dooO7Qol47ieVXyqVyeN8ud2M4aU9Mk/WjaLYPa8L59bOJ.8GlMM2"},
  {name: "user", email: "user@gmail.com", password_digest: "$2a$10$15WC9YxC/r9lJ/kidsOfKuBWSrnLkuR3HMiYjQ3k2fsyzTjvI.PE2"}
])
