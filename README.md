# Custom Dialog in flutter

## How to use
> Make a Separate widget otherwise *contex* not found




## Copy the code
```dart

        onPressed: () {
          showDialog(
              context: context,
              builder: (
                builder,
              ) {
                return Dialog(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Stack(
                    clipBehavior: Clip.none,
                    alignment: Alignment.topCenter,
                    children: [
                      Container(
                        height: 250,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                SizedBox(
                                  height: 30,
                                ),
                                Text(
                                  "Hi Bhuian",
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "Here is some demo text Here is some demo text Here is some demo text Here is some demo text Here is some demo text",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400),
                                )
                              ]),
                        ),
                      ),
                      Positioned(
                          top: -50,
                          child: CircleAvatar(
                            radius: 50,
                            child: ClipRRect(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(50)),
                              child: Image.network(
                                  'https://scontent.fdac80-1.fna.fbcdn.net/v/t1.6435-9/123042841_945908579151890_6246602248743437967_n.jpg?_nc_cat=109&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeE_H0d-mH39OysN5a0qVKJzONjtsS8E12I42O2xLwTXYuSdhNRxWIyj59WjUrCCHZGS3F2ibpUTzwGM7PXONha2&_nc_ohc=ftMicPiWNuMAX_HanwU&tn=awbMQwkPTCWm_hVB&_nc_ht=scontent.fdac80-1.fna&oh=00_AT8_IDOeEeDcLSJv9PPtC2tsrwZ_IqGbU89_I9mGjcpU8g&oe=62429AEB'),
                            ),
                          ))
                    ],
                  ),
                );
              });
        },

```


## ScreenShort
![](imgs/Screenshot_10.png)
