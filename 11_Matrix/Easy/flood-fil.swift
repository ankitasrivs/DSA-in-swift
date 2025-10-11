// https://leetcode.com/problems/flood-fill/description/

class Solution {
    func floodFill(_ image: [[Int]], _ sr: Int, _ sc: Int, _ color: Int) -> [[Int]] {
        // If the starting pixel already has the target color, nothing to do
        if image[sr][sc] == color { 
            return image
        }

        var currentImage = image
        fill(&currentImage, sr, sc, image[sr][sc], color)
        return currentImage
    }

    func fill(_ image: inout [[Int]], _ sr: Int, _ sc: Int, _ originalColor: Int, _ newColor: Int) {
        // Boundary + color mismatch check
        if sr < 0 || sc < 0 || sr >= image.count || sc >= image[0].count || image[sr][sc] != originalColor {
            return
        }

        // Fill the current cell
        image[sr][sc] = newColor

        // Recursive DFS in 4 directions
        fill(&image, sr - 1, sc, originalColor, newColor)
        fill(&image, sr + 1, sc, originalColor, newColor)
        fill(&image, sr, sc - 1, originalColor, newColor)
        fill(&image, sr, sc + 1, originalColor, newColor)
    }
}
