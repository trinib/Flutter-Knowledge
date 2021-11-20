class Post {
  //Attributes
  String body;
  String author;
  int likes = 0;
  bool userLiked = false;
  //passing body and author
  Post(this.body, this.author);

//a method to be run when user likes post (add 1 if like or already liked & subtract already liked)
  void likePost() {
    //reverse user likes(if false and call it will be true & viseversa)
    this.userLiked = !this.userLiked;
    if (this.userLiked) {
      this.likes += 1; // if true add 1 to user likes
    } else {
      this.likes -= 1; //if not true minus 1
    }
  }
}
