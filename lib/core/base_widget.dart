import 'package:flutter/cupertino.dart';
import 'package:flutter_provider_arch/viewmodels/base_view_model.dart';
import 'package:provider/provider.dart';

class BaseWidget<T extends BaseViewModel> extends StatefulWidget{
  final T model;
  final Widget child;
  final Function(BuildContext context,T model,Widget child) builder;
  final Function(T model) onModelReady;
  const BaseWidget(
    {
    this.model,
    this.builder,
    this.child,
    this.onModelReady, Column body
    }
    );
  @override 
  State<StatefulWidget> createState() {
   
    return _BaseWidgetState();
      }
    
    }
    
    class _BaseWidgetState<T extends BaseViewModel> extends State<BaseWidget<T>> {
      T model;

      @override
  void initState() {
    
    super.initState();
    model =widget.model;
    if(model!=null){
      widget.onModelReady(model);
    }
  }
  @override
  Widget build(BuildContext context) {
     
    return ChangeNotifierProvider<T>.value(
      value:widget.model,
      child:Consumer<T>(
        child:widget.child,
        builder:widget.builder,
      ),
    );
  }
}