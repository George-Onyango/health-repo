import 'package:bloc/bloc.dart';
import 'package:health_app/data/repository.dart';
import 'package:meta/meta.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  final Repository repository;

  CartCubit(this.repository) : super(CartInitial());

  void fetchCart() {}
}
