import 'package:mobx/mobx.dart';
import 'package:todomobx/stores/list_store/todo_store.dart';

part 'list_store.g.dart';

class ListStore = _ListStore with _$ListStore;

abstract class _ListStore with Store {
  @observable
  String newtoDoTitle = '';

  @action
  void setNewtoDoTitle(String value) => newtoDoTitle = value;

  @computed
  bool get haveText => newtoDoTitle.isNotEmpty;


  ObservableList<TodoStore> toDoList = ObservableList();

  @action
  void addToDo(){ toDoList.add(TodoStore(newtoDoTitle));
  newtoDoTitle = '';
  }

}
