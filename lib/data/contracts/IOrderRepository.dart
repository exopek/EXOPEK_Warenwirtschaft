abstract class IOrderRepository {
  Future<List<dynamic>> getOrders(DateTime after);

  //Future<dynamic> getWorkout(String id);
  /* Future<Workout> getWorkout(String id);
  Future<Workout> addWorkout(Workout workout);
  Future<Workout> updateWorkout(Workout workout);
  Future<void> deleteWorkout(String id); */
}
