//: Playground - noun: a place where people can play
import UIKit
import PlaygroundSupport

let container = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
if let data = try? Data(contentsOf: URL(string: "https://digitalhealthsummit.com/wp-content/uploads/2014/08/apple.jpg")!) {
    if let image = UIImage(data: data) {
        imageView.image = image
    }
}
container.addSubview(imageView)

let view = UIView(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
view.layer.cornerRadius = 20.0
view.layer.borderColor = UIColor.red.cgColor
view.layer.borderWidth = 6.0
view.backgroundColor = UIColor.green
container.addSubview(view)

PlaygroundPage.current.liveView = container
PlaygroundPage.current.needsIndefiniteExecution = true
