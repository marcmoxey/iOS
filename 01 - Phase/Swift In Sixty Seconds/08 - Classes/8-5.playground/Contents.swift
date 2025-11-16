import Cocoa

// Copying object - orginal and copy point to the same thing( when making a change; both change) - refernece type


class Singer {
    var name = "Taylor Swift"
}

var singer = Singer()
print(singer.name)


var singerCopy = singer
singerCopy.name = "Justin Bieber"

print(singer.name)


