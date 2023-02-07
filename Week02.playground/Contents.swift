import UIKit

var greeting = "Welcome to New York!"

func welcome(for name: String) -> String {
    "Hello, " + name + "! " + greeting + " 😀"
}
print(welcome(for: "Mike"))

// Read in an image from a url string
func imageFor(_ str: String) -> UIImage {
    let url = URL(string: str)
    let imgData = try? Data(contentsOf: url!)
    let uiImage = UIImage(data:imgData!)
    return uiImage!
}

// Define the size of the graphic and store the values inside of a variable named "renderer"
let dimension = CGSize(width: 1024, height: 1024)
let format = UIGraphicsImageRendererFormat()
format.scale = 1
let renderer = UIGraphicsImageRenderer(size: dimension, format: format)

// obtain image via url
let imageURL = "https://media.cntraveler.com/photos/63483e15ef943eff59de603a/16:9/w_2580,c_limit/New%20York%20City_GettyImages-1347979016.jpg"
// original size
let img1 = imageFor (imageURL)

// obtain image via local file (in original size)
let img2 = UIImage(named:"Central_Park.jpeg")!


// draw and display the image on the screen
let image1 = renderer.image { (context) in

img1.draw(in: CGRect(x: 0, y: 0, width: renderer.format.bounds.width, height: renderer.format.bounds.height))
}

let image2 = renderer.image { (context) in

img2.draw(in: CGRect(x: 0, y: 0, width: renderer.format.bounds.width, height: renderer.format.bounds.height))
}

// Display image #1 in modified size (1024 * 1024)
image1

// Display image #2 in modified size (1024 * 1024)
image2

