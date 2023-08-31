let overlayView = BlurredOverlayView(
    titleText: .constant("Title"),
    buttonText: .constant("Button")
)
let hostingController = UIHostingController(rootView: overlayView)
hostingController.modalPresentationStyle = .fullScreen
hostingController.view.backgroundColor = .clear

addChild(hostingController)
hostingController.view.translatesAutoresizingMaskIntoConstraints = false
view.addSubview(hostingController.view)
hostingController.didMove(toParent: self)

NSLayoutConstraint.activate([
    hostingController.view.topAnchor.constraint(equalTo: view.topAnchor),
    hostingController.view.bottomAnchor.constraint(equalTo: view.bottomAnchor),
    hostingController.view.leadingAnchor.constraint(equalTo: view.leadingAnchor),
    hostingController.view.trailingAnchor.constraint(equalTo: view.trailingAnchor)
])
