import Fluent
import Vapor

final class Todo: Model {
    
    struct Input: Content {
        let title: String
    }

    struct Output: Content {
        let id: String
        let title: String
    }
    
    static let schema = "todo"

    
    @ID(key: .id) var id: UUID?
    @Field(key: "title") var title: String

    init() { }
    
    init(id: UUID? = nil, title: String) {
        self.id = id
        self.title = title
    }

}
