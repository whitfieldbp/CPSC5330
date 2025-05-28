import UIKit

// Movies based on Video Games with their Metacritic scores.

// Tuple setup
typealias MovieGame = (name: String, score: Int)

//Array setup
let movie : [MovieGame] = [
    ("Warcraft", 32),
    ("Resident Evil", 35),
    ("Mortal Kombat", 60),
    ("A Minecraft Movie", 45),
    ("Pokemon Detective Pikachu", 53),
    ("Sonic the Hedgehog", 47),
    ("The Super Mario Bros. Movie", 46)
]

// Summary function
func summary(_ movie: [MovieGame]) {
    for (name, score) in movie {
        print("\(name): \(score)")
    }
}
summary(movie)

// Function with min, max, and avg score
func findMinMax(scores: [Int]) -> (min: Int, max: Int, avg: Int) {
    let minScore = scores.min() ?? 0
    let maxScore = scores.max() ?? 0
    let avgScore = scores.reduce(0, +) / scores.count
    return (minScore, maxScore, avgScore)
}

let scoreResult = findMinMax(scores: movie.map(\.score))
print("Min score: \(scoreResult.min)")
print("Max score: \(scoreResult.max)")
print("Average score: \(scoreResult.avg)")

// Filter function with closure for score above 50.
let highScore = movie.filter { $0.score >= 50 }
print("High Scores:", highScore)
