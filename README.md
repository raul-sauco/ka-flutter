# KA Flutter application

A Flutter project created as an assignment for the Open University of Catalonia 2020/21 course on _New technologies on mobile development_.

The project uses the Flutter framework to fetch and display data from a private API.

Source code in [GitHub][1].

## Development process

The first stop was to create a login/logout flow.

At first I implemented this functionality without `FutureBuilder` and, tough it worked, it was hard to give visual feedback on the different states to the end user. So I decided to update it following [this example app][2] to use `FutureBuilder` at the root of the app.

## References

[Example app] using `FutureBuilder` and _Firebase_ to create a login flow.

[1]: https://github.com/raul-sauco/ka-flutter
[2]: https://github.com/aaronksaunders/simple_firebase_auth
