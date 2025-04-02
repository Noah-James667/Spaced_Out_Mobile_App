const functions = require("firebase-functions");
const admin = require("firebase-admin");
admin.initializeApp();

exports.onUserDeleted = functions.auth.user().onDelete(async (user) => {
  let firestore = admin.firestore();
  let userRef = firestore.doc("user/" + user.uid);
  await firestore
    .collectionGroup("shop_items")
    .where("users_shop_items", "==", userRef)
    .get()
    .then(async (querySnapshot) => {
      for (var doc of querySnapshot.docs) {
        console.log(`Deleting document ${doc.id} from collection shop_items`);
        await doc.ref.delete();
      }
    });
  await firestore.collection("user").doc(user.uid).delete();
});
