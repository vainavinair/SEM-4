```
Aim: Write a program to implement CRUD operations on MongoDB.
```

<h3>Description: </h3>

<h4> CRUD :- CREATE READ UPDATE DELETE</h4>

### Create

```
db.collectionname.inserOne()
db.collectioname.inserMany()
```

<hr/>

### Read<br/>
**query**: This is an optional parameter that defines the selection criteria. In simple words, it defines a query as what you want to find in a collection.<br/>

**projection**: This is an optional parameter that defines what to return if the query criteria are met successfully. In simple words, it is a type of decision-making that decides on criteria.

```
db.collection_name.find(query, projection)  
```

<hr/>

### Update<br/>
**query**: This is an optional parameter that defines the selection criteria. In simple words, it defines a query as what you want to find in a collection.<br/>

**projection**: This is an optional parameter that defines what to return if the query criteria are met successfully. In simple words, it is a type of decision-making that decides on criteria.

UpdateOne()
```
db.collection.updateOne(<filter>, <update>, <options>)
```

```
db.posts.updateOne( 
  { title: "Post Title 5" }, 
  {
    $set: 
      {
        title: "Post Title 5",
        body: "Body of post.",
        category: "Event",
        likes: 5,
        tags: ["news", "events"],
        date: Date()
      }
  }, 
  { upsert: true } //an upsert means an update that inserts a new document if no document matches the filter
<br/>
)
```



updateMany()<br/>
The updateMany() method will update all documents that match the provided query.

```
db.collection.updateMany(<filter>, <update>, <options>)
```

```
db.posts.updateMany({}, { $inc: { likes: 1 } })
```

replaceOne()<br/>
The replaceOne() method is used to replace a single document in the specified collection.
```
db.collection.replaceOne(<filter>, <update>, <options>)
```

<hr/>

### Delete

deleteOne()<br/>
The deleteOne() method will delete the first document that matches the query provided.

```
db.posts.deleteOne({ title: "Post Title 5" })
```

deleteMany()<br/>
The deleteMany() method will delete all documents that match the query provided.


```
db.posts.deleteMany({ category: "Technology" })
```