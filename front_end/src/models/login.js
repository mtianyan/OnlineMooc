import {stringify} from 'querystring';
import {history} from 'umi';
import {AccountLogin, getCode, AccountLogout} from '@/services/login';
import {setAuthority} from '@/utils/authority';
import {getPageQuery} from '@/utils/utils';

const Model = {
    namespace: 'login',
    state: {
        status: undefined,
        errors: {},
    },
    effects: {
        * login({payload}, {call, put}) {
            const response = yield call(AccountLogin, payload);
            yield put({
                type: 'changeLoginStatus',
                payload: response,
            }); // Login successfully

            if (response.status === 'ok') {
                // alert("nihao1")
                const urlParams = new URL(window.location.href);
                const params = getPageQuery();
                let {redirect} = params;

                if (redirect) {
                    // alert("nihao2")
                    const redirectUrlParams = new URL(redirect);

                    if (redirectUrlParams.origin === urlParams.origin) {
                        // alert("nihao3")
                        redirect = redirect.substr(urlParams.origin.length);

                        if (redirect.match(/^\/.*#/)) {
                            redirect = redirect.substr(redirect.indexOf('#') + 1);
                        }
                    } else {
                        window.location.href = '/';
                        return;
                    }
                }
                history.replace(redirect || '/');
            } else {
                yield put({
                    type: 'errorsHandle',
                    payload: response.errors,
                });
            }
        },
        * getcode({payload}, {call, put}) {
            const response = yield call(getCode);
            if (response) {
                return response
            }
        },

        async logout() {
            const {redirect} = getPageQuery(); // Note: There may be security issues, please note
            const response = await AccountLogout();
            if (window.location.pathname !== '/xadmin/login' && !redirect) {
                history.replace({
                    pathname: '/xadmin/login',
                    search: stringify({
                        redirect: window.location.href,
                    }),
                });
            }
        },
    },
    reducers: {
        errorsHandle(state, {payload}) {
            console.log("errorsHandle")
            console.log(payload)
            return {...state, errors: payload};
        },
        changeLoginStatus(state, {payload}) {
            setAuthority(payload.currentAuthority);
            return {...state, status: payload.status, type: payload.type};
        },
    },
};
export default Model;
