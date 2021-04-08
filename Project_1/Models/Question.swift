//
//  Question.swift
//  Project_1
//
//  Created by 刘泓磊 on 4/6/21.
//

import Foundation

struct Question: Hashable { // Add Hashable Conformance
    let questionText: String
    let possibleAnswers: [String]
    let correctAnswerIndex: Int
 
    static var allQuestions = [
        Question(questionText: "What is the time complexity of performing an AVL Tree finding?",
                 possibleAnswers: [
                    "O(n*logn)",
                    "O(n)",
                    "O(n^2)",
                    "O(n!)"
                 ],
                 correctAnswerIndex: 0),
        Question(questionText: "Which is not a balanced-tree structure?",
                 possibleAnswers: [
                    "AVL Tree",
                    "Splay Tree",
                    "Red-Black Tree",
                    "Binary Search Tree"
                 ],
                 correctAnswerIndex: 3),
        Question(questionText: "What is the representation for queue?",
                 possibleAnswers: [
                    "LIFO",
                    "FIFO",
                    "Greedy",
                    "Divide & Conquer"
                 ],
                 correctAnswerIndex: 1),
        Question(questionText: "Is Heap a complete binary tree?",
                 possibleAnswers: [
                    "No",
                    "Yes",
                    "Depends",
                    "Hep is not tree-structure"
                 ],
                 correctAnswerIndex: 1),
        Question(questionText: "What is the underneath realization for LRU?",
                 possibleAnswers: [
                    "Linked List",
                    "Multi-dimension Array",
                    "Linked hash map",
                    "Priority Queue"
                 ],
                 correctAnswerIndex: 2),
        Question(questionText: "Which sorting algorithm is faster?",
                 possibleAnswers: [
                    "Quick Sort",
                    "Bubble Sort",
                    "Insertion Sort",
                    "Selection Sort"
                 ],
                 correctAnswerIndex: 0),
        Question(questionText: "Which is not a solution to solve hash collisions?",
                 possibleAnswers: [
                    "linear probing",
                    "Rehashing",
                    "Chaining",
                    "Resizing the map"
                 ],
                 correctAnswerIndex: 3)
    ]
}
