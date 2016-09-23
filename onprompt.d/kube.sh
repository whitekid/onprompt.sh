[ -r .kube.rc ] || return

. .kube.rc

[ -z "${KUBE_CONTEXT}" ] && return

_current=$(kubectl config current-context 2>&1 /dev/null)

if [ "${_current}" != "${KUBE_CONTEXT}" ]; then
    kubectl config use-context ${KUBE_CONTEXT}
fi
