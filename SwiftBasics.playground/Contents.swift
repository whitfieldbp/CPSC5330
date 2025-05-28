import UIKit

// Movies based on Video Games with their Metacritic scores.

func findMinMax(scores: [Int]) -> (min: Int, max: Int, avg: Int) {
    let minScore = scores.min() ?? 0
    let maxScore = scores.max() ?? 0
    let avgScore = scores.reduce(0, +) / scores.count
    return (minScore, maxScore, avgScore)
}

typealias MovieGame = (name: String, score: Int)

let movie : [MovieGame] = [
    ("Warcraft", 32),
    ("Resident Evil", 35),
    ("Mortal Kombat", 60),
    ("A Minecraft Movie", 45),
    ("Pokemon Detective Pikachu", 53),
    ("Sonic the Hedgehog", 47),
    ("The Super Mario Bros. Movie", 46)
]

print(movie[0].name)
print(movie[3].score)

let scoreResult = findMinMax(scores: movie.map(\.score))
print("Min score: \(scoreResult.min)")
print("Max score: \(scoreResult.max)")
print("Average score: \(scoreResult.avg)")
