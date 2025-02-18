# 🚗 Vehicle List App  
A **Flutter app** that displays a list of vehicles with color-coded indicators based on **fuel efficiency** and **age**. Uses **Firebase Firestore** as the backend for real-time updates.  

---

## 📌 Features  
- Fetches **vehicle data** from Firebase Firestore  
- Displays a **list of vehicles** with **name, mileage, and age**  
- **Color-coded indicators**:  
  - 🟢 **Green** → Fuel-efficient (≥ 15 km/L) & Age ≤ 5 years  
  - 🟠 **Amber** → Fuel-efficient (≥ 15 km/L) but Age > 5 years  
  - 🔴 **Red** → Less fuel-efficient (< 15 km/L)  
- **Real-time updates** from Firebase  

---

## 🛠️ Technologies Used  
- **Flutter & Dart** → Frontend  
- **Firebase Firestore** → Database  
- **Firebase Core** → Firebase integration  

---

## 🚀 Setup & Installation  

### 1️⃣ Clone the Repository  
```sh
git clone https://github.com/YOUR_GITHUB_USERNAME/flutter-vehicle-list.git
cd flutter-vehicle-list
```

### 2️⃣ Install Dependencies  
```sh
flutter pub get
```

### 3️⃣ Setup Firebase  
1. **Go to Firebase Console** → [Firebase](https://console.firebase.google.com/)  
2. **Enable Firestore Database** (Start in **Test Mode**)  
3. Download `google-services.json` (for Android) & place it inside:  
   ```
   android/app/google-services.json
   ```  
4. Run:  
   ```sh
   flutterfire configure
   ```  
   This generates `firebase_options.dart`.  

### 4️⃣ Run the App  
**For Android/iOS:**  
```sh
flutter run
```
**For Web:**  
```sh
flutter run -d chrome
```

---

## 🏛️ Firestore Database Structure  
```
vehicles
  ├── (auto-generated ID)
      ├── name: "Honda Civic"
      ├── mileage: 16
      ├── age: 3
```

---

## 🎯 How It Works  
1. Fetches **vehicle data** from Firestore.  
2. Determines the **color coding** based on mileage & age.  
3. Displays the **vehicle list** with **real-time updates**.  

---

## 📝 License  
This project is **open-source**. Feel free to use and modify it!  

---

## 🔗 GitHub Repository  
📌 **[View Source Code](https://github.com/YOUR_GITHUB_USERNAME/flutter-vehicle-list)**  
