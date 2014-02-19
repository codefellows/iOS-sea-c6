## 1kPic - iOS camera and photo library tutorial for new devs

######in this tutorial, you will learn how to use:

1. `UIImagePickerController` to take a picture with the iPhone camera, or import from the user's photo library
1. Delegate protocols to receive notifications (such as images) from another object
1. The `NSDictionary objectForKey:` method to retrieve information from a dictionary
1. `UIImageView` to display the photo properly (correct aspect ratio, scaling & size)
1. `UIActivityViewController` to send the photo to another app or service

######Bonus Challenge

We've all heard that a picture is worth a thousand words, so let's use an iPhone, Math and some computer science to prove it

######What You'll Need
1. A Picture
1. 1,000 words
1. A way to convert the two into something we can compare
1. An algorithm for comparing the equality of the words and the picture

######Recommended Steps
1. Use the `UIImagePickerController` to get an edited image from the user
1. Convert the `UIImage` object into raw bytes (`NSData`)
1. Create an `NSString` containing 1,000 words of any length
1. Convert the `NSString` into raw bytes (`NSData`)
1. Compare the length in bytes of each object
1. Increase the image compression and the average length of each word so that the two are equal