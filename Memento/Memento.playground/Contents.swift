/*:
# Memento
 - - - - - - - - - -
 
 The memento pattern allows an object to be saved and restored. It involves three parts:
 
 ## Code Example
 */
import Foundation

// MARK: - Originator
public class Game: Codable {
    
    public class State: Codable {
        public var attemptsRemaining: Int = 3
        public var level: Int = 1
        public var score: Int = 0
    }
    
    public var state = State()
    
    public func rackUpMassivePoints() {
        state.score += 9002
    }
    
    public func monstersEatPlayer() {
        state.attemptsRemaining -= 1
    }
}

// MARK: - Memento
typealias GameMemento = Data


// MARL: - CareTaker
public class GameSystem {
    
    // 1
    private let decoder = JSONDecoder() // decode Games from Data
    private let encoder = JSONEncoder() // encode Games to Data
    private let userDefaults = UserDefaults.standard // persist Data to disk
    
    // 2
    public func save(_ game: Game, title: String) throws {
        
        // 編碼(儲存)
        let data = try encoder.encode(game)
        userDefaults.set(data, forKey: title)
    }
    
    // 3
    public func load(title: String) throws -> Game {
        
        // 解碼(讀取)
        guard let data = userDefaults.data(forKey: title), let game = try? decoder.decode(Game.self, from: data) else {
            throw Error.gameNotFound
        }
        return game
    }
    
    public enum Error: String, Swift.Error {
        case gameNotFound
    }
}

// MARK: - Example
var game = Game()
game.monstersEatPlayer()
game.rackUpMassivePoints()


// MARK: - Save Game
let gameSystem = GameSystem()
try gameSystem.save(game, title: "Best GameEver")

// New Game
game = Game()
print("New Game Score: \(game.state.score)")

// Load Game
game = try! gameSystem.load(title: "Best GameEver")
print("Load Game Score: \(game.state.score)")
