import Foundation

public class TopCompetitors{
    public init(){
        
    }
    public func getTopCompetitors(reviews:[String], competitors:[String], noOfTopCompetitors:Int) -> [String]{
        var topCompitorsArray = [String]()
        var hashMap = [String:Int]()
        for i in 0..<reviews.count {
            let review = reviews[i]
            for j in 0..<competitors.count {
                let competitor = competitors[j]
                if (review.contains(competitor)){
                    hashMap[competitor] = (hashMap[competitor] ?? 0) + 1
                }
            }
        }
        
        let sortedDict = hashMap.sorted{ $0.1 > $1.1 }
        sortedDict.forEach{(key, value) in
            while(topCompitorsArray.count < noOfTopCompetitors ){
                topCompitorsArray.append(key)
            }
        }
        return topCompitorsArray
    }
}
