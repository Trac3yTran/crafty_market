## **T2A2 - Marketplace Project - Crafty Market**


### **R7 | The Problem**:

Crafty Market is an online marketplace where people come together to buy and sell their creations and allows consumers the opportunity to admire, purchase and find inspiration from a  wide variety of homemade items.

 Currently, in the market, there is Ety known for focusing on handmade vintage items and craft supplies, but the downside is their high fees. 
 
 Etsy fees include once an item sells, there is a 5% transaction fee on the sale price. If you accept payments through Etsy Payments, they will also collect a 3-4% + AU$0.25 payment processing fee when an item is sold.
Whilst the fees are generally lower if you sell in bulk but for someone that create a few items its consider quite high and there won't be any return on investment to the seller. 

#

### **R8 | The Solution**:

Crafty Market is a  marketplace that focuses on allowing the seller to sell their creations without any fees. 
There are no processing fees as buyer and seller can exchange details for organising method of payment outside of the website. 

Crafty  Market wants to encourage people to share their creative ideas and place for people to get some exposure.
 It’s not uncommon for sellers to start on Crafty Market then grow their brand and create a website. The seller can drive traffic from Crafty marketplace listings to their website where customers get an even better taste of what they have to offer.
#

### **R9 | Deployed Website Application**:

https://crafty-market.herokuapp.com/

#

### **R10 | Github Repo**:

https://github.com/Trac3yTran/crafty_market

#
### **R11 | Crafty Market Overview**:


**Purpose**:

 The purpose of this application is to provide a central market place for
focused on handmade or vintage items and craft supplies without fees on sale and processing fees. 


**Functionality & features**:

**Accounts:**
 Users can create accounts for full site functionality and must be logged in to make any purchases or create listings. Site users that are not logged in have access to the home page and all listings however they cannot click into a listing and are prompted to create an account. Users with accounts also have the option to set up an account profile with further information about them.

**User Dashboard:**  
Once the user has created their account there will have access to the dashboard that includes Seller Account that will give them access to Manage all their listing in one spot and also the Sales History if anyone has purchased their items. On the User Account, it will give them access to Purchased History display all the purchased items here and option to Edit Profile and Sign out. 

**Listings:** All logged-in users can create listings to sell the product, including image upload. Logged in users can access details of their listings from one page, and only listing owners can edit and delete listings. 

**Search:** Users can search for a listing by name, and it will return the result if there is an existing listing that matches with what they are searching. 

**Sitemap**: ![img](./docs/sitemap.png)

 **Screenshots**:

 Homepage & Listing Page 

![img](./docs/homepage.png)

Create listing

![img](./docs/new.png)

Show listing

![img](./docs/show.png)

Seller Account (Manage Listing)

![img](./docs/manage.png)

Seller Account (Sales History)

![img](./docs/sales.png)

Purchased History 

![img](./docs/purchase.png)

 **Target audience**: 
 
 The target audience for this application is for anyone that wants to sell their creative items; this can be anything from material to make items or handmade products. Prices are listed in AUD; however, the audience is not restricted to Australia.

 **Tech stack**:

**Front-end:** HTML5, CSS3, SCSS, Embedded Ruby, Bootstrap
 
**Back-end:** Ruby on Rails 5.2.4.

**Database:** Postgresql

**Deployment:** Heroku

**Biz Tools:** Trello

**Utilities:** Devise, AWS S3

**DevOps:** Git, Github, VS Code, Bundler, Balsamiq

 #

 ### **R12 | User Stories**

Crafty Market allows user profile to be set between buyer and seller. This will give each user the ability to create a listing and view listing. User stories will be broken down by the into different functionality between buyers and sellers.  

**User Access Management**:

- As a visitor, I can explore all the listing without logging in
- As a visitor, I want to be able to create an account and become a buyer and seller member. 
- As a buyer and seller, I want to be able to use my email and password to log in. 
- As a buyer or seller, I want to be able to logout of my account any time.
- As a buyer or seller, I want to delete my account anytime. 

**Listings:**

- As a buyer, I want to purchase a listing item.
- As a buyer, I want to see my purchase history
- As a seller, I want to create a post to sell my listing
- As a seller, I can upload a name, description, price and photo of my listing products to sell it.
- As a seller, I want to edit and delete my listing to reflect the correct information. 
- As a seller, I want to view my listing and one place to keep track of what I am selling
- As a seller, I want to see my listing in one page so I can manage all listing
- As a seller, I want to see my sales history to see who has purchased my item. 

**Authentication & Authorisation**:

- As a buyer or seller, I do not want others to be able to access my order and to keep my details safe
- As a seller, I do not want others to edit and delete my posts

#
 ### **R13 | Wireframes**:

Homepage

![img](./docs/whomepage.png)

Search

![img](./docs/wsearch.png)

Create

![img](./docs/wcreate.png)

Show listing

![img](./docs/wdisplay.png)

Manage Listing

![img](./docs/wmanage.png)

Sales History 

![img](./docs/wsales.png)

Purchase History

![img](./docs/wpurchase.png)
 #

 ### **R14 | ERD**:

![img](./docs/ERD.png)

#

 ### **R15 | High-level components**:

Crafty Market is a two-sided marketplace built on Ruby on Rails framework. Its utilise Postgresql as the database system. Authorisation and data sanitising methods are used within each model to ensure the integrity of the database.

When a user visits the site, they can browse through the listing but cannot purchase anything. It will direct them to sign up form or login form. The use of Devise allows authorisation scope and displays a different view based on user status. For full access to the application, the user must create an account; this will allow them to do both buyer and seller functionality. When a user creates an account, they can create a new listing and purchase a listing from other sellers. Edit and Delete functions can only be accessible to the owner of the listing and cannot be deleted by anyone else. 

User can also access their dashboard that available for them when they create an account. This will show separate their buyer and seller functions. In the Seller account, they can access the Manage Listing to look at all the listings that now listed on the Crafty Marketplace to easily manage in one spot. User can also view Sales History to see who has purchased their item. On the buyer side, the user can edit their account and view purchase history in one spot. 

A search function is available for a user to search for the item they are after. If there is a listing that matches with their listing, it will display if not that means no one has listed the item and will need to search for a different item. 

 #

 ### **R16 | 3rd Party Services**:

**Devise:** The Devise Gem is users for User Authentication. It creates sign-up and sign-in forms; it also can be used to create user accounts for privacy.

**Amazon S3:**  Facilitates image upload and provides object storage through a web service interface.

**Bootstrap Framework:** The Bootstrap framework has been used with CSS to style buttons, forms and overall aesthetic of the application. 

**Heroku:** For deployment for the application and operates the application entirely in the cloud.

 #
 ### **R17 | Models**: 

USER

  ```
has_many :listings, dependent: :destroy
has_many :sales, class_name: "Order", foreign_key: "seller_id"
has_many :purchases, class_name: "Order", foreign_key: "buyer_id"
  ```

LISTING

```
has_one_attached :picture
belongs_to :user
has_many :orders 
```

ORDER

```
belongs_to :listing
belongs_to :buyer, class_name: "User"
belongs_to :seller, class_name: "User"
```

 #

 ### **R18 | Database Relations**:

**User:** There are many relations that belong to the user table, such as listing and order. The primary key in the user table user_id is used as a foreign key in the listing table and order table. 

**Listing:** Each Listing belongs to a single user. Users have a slightly different relationship with listings. In the case of users, each user can have many listings has_many: listings, dependent: : destroy.Dependent destroy says is that a Listing's existence depends on the existence of the user who created it. If that user is deleted, then the listing will automatically be deleted as well. The listing also has many orders and needs one attached picture.

**Order:** Belongs to the listing. Each order belongs to a buyer or a seller that has a class name "User". It's using the foreign key to access the User table.

 #

 ### **R19 | Database Schema Design**:

 ```

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "listings", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.decimal "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.integer "maker"
    t.integer "use"
    t.string "image"
  end

  create_table "orders", force: :cascade do |t|
    t.string "address"
    t.string "city"
    t.string "state"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "listing_id"
    t.integer "buyer_id"
    t.integer "seller_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
end

```
 #

 ### **R20 | Task Management**:

This project is tracked and managed using Trello. The below screenshot shows the initial planning of the application. I started on the document and working through my ERD and associations. Once I have created the ERD, I started planning out the MVP; ensuring has CRUD functionality, image uploads and user authentication using Devise. Styling was added through the different stages of the application. 

[Link to Trello Board](https://trello.com/b/RBop0vld/t2a2-marketplace-project-crafty-market)

![img](./docs/Trello.png)

