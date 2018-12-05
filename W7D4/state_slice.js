{
  entities: {
    reviews: {
      1: {
        id: 1,
        body: "Too small",
        userId: 11,
        homeId: 1,
        ratings: 3
      },
      2: {
        id: 2,
        body: "Perfect Location",
        userId: 25,
        homeId: 1,
        ratings: 5
      },
      3: {
        id: 3,
        body: "Host was extremely helpful with their recommendations",
        userId: 11,
        homeId: 2,
        ratings: 5
      }
    },
    users: {
      11: {
        id: 11,
        fname: "Sterling",
        lname: "Archer",
        passwordDigest: "asynclf324135kjasoighqew",
        sessionToken: "123eiwf0032",
        email: "numberonespy@isis.net"        
      },
      25: {
        id: 25,
        fname: "Ron",
        lanme: "Burgandy",
        passwordDigest: "asynclfkjasoighqew",
        sessionToken: "123eiadsfwf0032",
        email: "ilovesandiego@hotmail.com"
        
      }
    },
    bookings: {
      12: {
        id: 12,
        userId: 11,
        numGuests: 2,
        start: 12-31-18,
        end: 01-01-19,
        totalCost: 150,

      }
      27: {
        id: 27,
        userId: 25,
        numGuests: 4,
        start: 12-08-18,
        end: 12-12-18,
        totalCost: 1200,
      }
    }
    homes: {
      1: {
        id: 1,
        ownerId: 31,
        price: 230,
        city: "San Francisco",
        state: "CA",
        zip: 94127,
        numberGuests: 5,
        country: "United States",
        type: "studio",
        bedCount: 1,
        bathrooms: 0,
        bedrooms: 1
      }
      2: {
        id: 2,
        ownerId: 22
        price: 330,
        city: "New York",
        state: "NY",
        zip: 12437,
        numberGuests: 4,
        country: "United States",
        type: "apartment"
        bedCount: 3,
        bathrooms: 2,
        bedrooms: 3
      }
    }
    userPhotos: {
      23: {
        id: 23,
        userId: 11,
        url: "23aws.com"
        
      }
      31: {
        id: 31,
        userId: 35,
        url: "35aws.com"
      }
    }
    homePhotos: {
      13: {
        id: 13,
        homeId: 1,
        url: "1aws.com"
        
      }
      4: {
        id: 4,
        homeId: 2,
        url: "2aws.com"
      }
    }
  },
  ui: {
    loading: true/false
  },
  errors: {
    login: ["Incorrect username/password combination"],
    homeForm: ["Number of guests cannot be blank"],
  },
  session: { currentUserId: 25 }
}