
import Foundation

public struct ModelInfo {

	public let url: URL
	public let configuration: String?

	public init(url: URL, configuration: String? = nil) {
		self.url = url
		self.configuration = configuration
	}
}
