
import 'dart:async';

const persona = ['rubio@example.com','12345'];
class LoginBloc{

    Stream<List<String>> get getUserLoguin async* {
        final List<String> users = [];

        for( String user in persona){
            await Future.delayed(Duration(seconds: 2));
            users.add(user);

            yield users;
        }
    }

    StreamController<int> _usersCount = new StreamController<int>();
    Stream<int> get usersCount => _usersCount.stream;

    LoginBloc(){
      this.getUserLoguin.listen((usersList)=> this._usersCount.add(usersList.length));
    }
    disponse(){
      _usersCount.close();
    }
}