import SwiftUI
import MapKit

struct GPSView: View {
    // Replace region with camera position
    @State private var position: MapCameraPosition = .region(
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 47.3769, longitude: 8.5417),
            span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
        )
    )

    var body: some View {
        GeometryReader { geometry in
            VStack(spacing: 0) {
                // First half - Map section
                Map(position: $position) {
                    // Map content can be added here later
                }
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .overlay(
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(Color.gray, lineWidth: 2)
                )
                .padding(20)
                .frame(height: geometry.size.height / 2)

                
                // Second half - Text section
                VStack(spacing: 10) {
                    Text("Select Crop")
                        .font(.largeTitle)
                        .padding()
                    
                    // Modified HStack with buttons and labels
                    HStack(spacing: 20) {
                        Button(action: {
                            // Action for first button
                        }) {
                            VStack(spacing: 5) {
                                Image("rice")
                                    .resizable()
                                    .scaledToFit()
                                    .cornerRadius(10)
                                    .padding(.top, 10)
                                    .padding(.horizontal, 10)
                                
                                Text("Rice")
                                    .font(.caption)
                                    .foregroundColor(.primary)
                                    .padding(.bottom, 10)
                            }
                            .frame(width: 100)
                            .background(Color.white)
                            .cornerRadius(10)
                            .shadow(color: .gray.opacity(0.3), radius: 5, x: 0, y: 2)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.gray.opacity(0.3), lineWidth: 1)
                            )
                        }
                        .buttonStyle(ScaleButtonStyle())
                        
                        Button(action: {
                            // Action for second button
                        }) {
                            VStack(spacing: 5) {
                                Image("wheat")
                                    .resizable()
                                    .scaledToFit()
                                    .cornerRadius(10)
                                    .padding(.top, 10)
                                    .padding(.horizontal, 10)
                                
                                
                                Text("Wheat")
                                    .font(.caption)
                                    .foregroundColor(.primary)
                                    .padding(.bottom, 10)
                            }
                            .frame(width: 100)
                            .background(Color.white)
                            .cornerRadius(10)
                            .shadow(color: .gray.opacity(0.3), radius: 5, x: 0, y: 2)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.gray.opacity(0.3), lineWidth: 1)
                            )
                        }
                        .buttonStyle(ScaleButtonStyle())
                        
                        Button(action: {
                            // Action for third button
                        }) {
                            VStack(spacing: 5) {
                                Image("cotton")
                                    .resizable()
                                    .scaledToFit()
                                    .cornerRadius(10)
                                    .padding(.top, 10)
                                    .padding(.horizontal, 10)
                                
                                Text("Cotton")
                                    .font(.caption)
                                    .foregroundColor(.primary)
                                    .padding(.bottom, 10)
                            }
                            .frame(width: 100)
                            .background(Color.white)
                            .cornerRadius(10)
                            .shadow(color: .gray.opacity(0.3), radius: 5, x: 0, y: 2)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.gray.opacity(0.3), lineWidth: 1)
                            )
                        }
                        .buttonStyle(ScaleButtonStyle())
                    }
                    .padding(.horizontal, 20)
                    .frame(height: 120)
                    
                    // Modified HStack with buttons and labels
                    HStack(spacing: 20) {
                        Button(action: {
                            // Action for first button
                        }) {
                            VStack(spacing: 5) {
                                Image("soy")
                                    .resizable()
                                    .scaledToFit()
                                    .cornerRadius(10)
                                    .padding(.top, 10)
                                    .padding(.horizontal, 10)
                                
                                Text("Soybean")
                                    .font(.caption)
                                    .foregroundColor(.primary)
                                    .padding(.bottom, 10)
                            }
                            .frame(width: 100)
                            .background(Color.white)
                            .cornerRadius(10)
                            .shadow(color: .gray.opacity(0.3), radius: 5, x: 0, y: 2)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.gray.opacity(0.3), lineWidth: 1)
                            )
                        }
                        .buttonStyle(ScaleButtonStyle())
                        
                        Button(action: {
                            // Action for second button
                        }) {
                            VStack(spacing: 5) {
                                Image("corn")
                                    .resizable()
                                    .scaledToFit()
                                    .cornerRadius(10)
                                    .padding(.top, 10)
                                    .padding(.horizontal, 10)
                                
                                Text("Corn")
                                    .font(.caption)
                                    .foregroundColor(.primary)
                                    .padding(.bottom, 10)
                            }
                            .frame(width: 100)
                            .background(Color.white)
                            .cornerRadius(10)
                            .shadow(color: .gray.opacity(0.3), radius: 5, x: 0, y: 2)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.gray.opacity(0.3), lineWidth: 1)
                            )
                        }
                        .buttonStyle(ScaleButtonStyle())
                        
                        Button(action: {
                            // Action for third button
                        }) {
                            VStack(spacing: 5) {
                                Image("soy")
                                    .resizable()
                                    .scaledToFit()
                                    .cornerRadius(10)
                                    .padding(.top, 10)
                                    .padding(.horizontal, 10)
                                
                                Text("Soy")
                                    .font(.caption)
                                    .foregroundColor(.primary)
                                    .padding(.bottom, 10)
                            }
                            .frame(width: 100)
                            .background(Color.white)
                            .cornerRadius(10)
                            .shadow(color: .gray.opacity(0.3), radius: 5, x: 0, y: 2)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.gray.opacity(0.3), lineWidth: 1)
                            )
                        }
                        .buttonStyle(ScaleButtonStyle())
                    }
                    .padding(.horizontal, 20)
                    .frame(height: 120)
                    
                    Spacer()
                }
                .frame(height: geometry.size.height / 2)
            }
        }
    }
}

struct ScaleButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .scaleEffect(configuration.isPressed ? 0.95 : 1)
    }
}

#Preview {
    GPSView()
}
