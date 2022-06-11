abstract class Repository<T> {
  Map<int, T> mockDb = <int, T>{};

  T create(T object);
  bool update(T object);
  bool delete(T object);
  T? getById(int id);
}
