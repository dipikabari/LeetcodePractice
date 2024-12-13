/***
 You are developing a messaging system where messages can arrive out of order. Each message has a sequence number and content. Write a function that accepts an array of messages (each with sequence number and content) and returns them in the correct order, with a twist: if there are gaps in the sequence numbers, you should insert placeholder messages with content 'MISSING' for those missing sequence numbers. The sequence starts from the lowest number present in the input. Example message format: {seq: number, content: string}
 EXAMPLE 1
 Input: [{seq: 2, content: 'World'}, {seq: 4, content: '!'}, {seq: 1, content: 'Hello'}]
 Output: [{seq: 1, content: 'Hello'}, {seq: 2, content: 'World'}, {seq: 3, content: 'MISSING'}, {seq: 4, content: '!'}]
 Explanation: Messages are ordered by sequence, with 'MISSING' inserted for sequence 3
 EXAMPLE 2
 Input: [{seq: 5, content: 'Last'}, {seq: 1, content: 'First'}]
 Output: [{seq: 1, content: 'First'}, {seq: 2, content: 'MISSING'}, {seq: 3, content: 'MISSING'}, {seq: 4, content: 'MISSING'}, {seq: 5, content: 'Last'}]
 Explanation: Filled gaps between sequence 1 and 5 with 'MISSING' messages
 
 Requirements :
 1.Function should accept an array of message objects
 2.Messages must be ordered by sequence number
 3.Insert 'MISSING' for any gaps in sequence numbers
 4.Preserve original message content for existing sequence numbers
 5.Handle empty input array by returning empty array
 6.Sequence starts from the lowest number in input
 7.Output should be an array of message objects in correct orde
 ***/

import Foundation

struct Message {
    let seq: Int
    let content: String
}

func orderedMessage(_ messages: [(Message)]) -> [(Message)] {
    var result: [(Message)] = []
    // Handle empty input
    guard !messages.isEmpty else { return [] }
    
    // Extract minimum and maximium sequence
    let seqNumbers = messages.map { $0.seq }
    guard let minSequence = seqNumbers.min(),
          let maxSequence = seqNumbers.max()
    else { return [] }

    // Dictionary for quick lookup of messages by sequence
    let messageDict = Dictionary(uniqueKeysWithValues: messages.map { ($0.seq, $0.content)})
    
    // Construct the ordered list
    for index in minSequence...maxSequence{
        if let content = messageDict[index] {
            result.append(Message(seq: index, content: content))
        } else {
            result.append(Message(seq: index, content: "MISSING"))
        }
    }
    
    return result
}

let messages : [Message] = [
    Message(seq: 1, content: "Hello"),
    Message(seq: 4, content: "!"),
    Message(seq: 2, content: "World"),
]
let output = orderedMessage(messages)

let messages1 : [Message] = [
    Message(seq: 5, content: "Last"),
    Message(seq: 1, content: "First")
]
let output1 = orderedMessage(messages1)

