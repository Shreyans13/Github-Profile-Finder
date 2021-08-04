// ignore: non_constant_identifier_names
bool shared_pref = true;
getValue() => shared_pref;
changeValue() => shared_pref = false;

//side icon
bool sideIcon = true;
getIcon() => sideIcon;
// {if (sideIcon) Icon(Icons.arrow_back_ios) else Icon(null)};
changeSideIcon(bool a) => sideIcon = a;
