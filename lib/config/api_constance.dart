import 'package:init_flutter_app_bloc/provider/api_provider.dart';

const BASE_URL = "url";
const LIMIT_REQUEST_TIME = 30;
const LIMIT_GET_CHAT_ROOMS = 15;
const LIMIT_GET_MESSAGES = 20;
const CONNECT_TIMEOUT = 45;

const register = {'url': '$BASE_URL/register', 'method': Method.POST};
const changePassword = {
  'url': '$BASE_URL/me/change-password',
  'method': Method.PUT
};
const changeEmail = {'url': '$BASE_URL/me/change-email', 'method': Method.PUT};

const login = {'url': '$BASE_URL/login', 'method': Method.POST};
// const getBasicInfor = {'url': '$BASE_URL/store', 'method': Method.GET};
// const updateBasicInfor = {'url': '$BASE_URL/store', 'method': Method.PUT};
// const updatAvatar = {'url': '$BASE_URL/store/avatar', 'method': Method.PUT};
// const addManage = {'url': '$BASE_URL/managers', 'method': Method.POST};
// const updateManage = {'url': '$BASE_URL/managers', 'method': Method.PUT};
// const deleteManage = {'url': '$BASE_URL/managers', 'method': Method.DELETE};
