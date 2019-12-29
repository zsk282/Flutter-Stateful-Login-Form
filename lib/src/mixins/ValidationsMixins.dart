class ValidationsMixins{

  String emailValidatior(String value){
  // return null if valid
  // return error message string if not valid
    if (!value.contains('@')){
      return 'Please enter valid Email';
    }

    return null;
  }

  String passwordValidator(String value){
    if(value.length < 4){
      return 'Please enter atleast 4 character password';
    }

    return null;
  }
}