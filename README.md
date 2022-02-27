# http package In Flutter

## How to use
> <b> Installation :</b>
> - include *http* package on **pubspec.yaml**
> - make a stateful widget


## Copy the code
```dart


  var data = [];
  Future getData() async {
    var response =
        await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
    setState(() {
      var decode = jsonDecode(response.body);
      data = decode;
      print(data);
    });
  }

  @override
  void initState() {
    super.initState();
    getData();
  }


```

> - You have got all the data *"data"* in variable
> - And you can see that in terminal








## Dependencies:
- curved_navigation_bar: ^1.0.3

![](imgs/Screenshot_1.png)
