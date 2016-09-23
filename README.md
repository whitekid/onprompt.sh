kubectl context switch 하는게 너무나 귀찮아서 .kube.rc가 있으면 자동으로 context switch 해준다.

시작은 이것이지만 디렉토리에 특정 파일이 있으면 뭔가 액션을 실행하는 것이므로 활용은 알아서~~~

# 사용법

	git clone https://github.com/whitekid/onprompt.sh.git
	source onprompt.sh/onprompt.sh
	cp -rp onprompt.sh/onprompt.d ~

이제 bash의 prompt가 출력될 때 마다 ~/onprompt.d/\*.sh 스크립트가 실행된다.

그리고 bashrc에도 당연히 추가...

	echo "source $PWD/onprompt.sh/onprompt.sh" >> ~/.bashrc

# examples

## kube.sh

.kube.rc에서 KUBE_CONTEXT=foo가 설정되어 있으면 kubectl context를 자동으로 해준다.

    KUBE_CONTEXT=foo

# 주의

onprompt.d의 스크립트를 무조건 실행하므로, 여기에 엉뚱한 것이 들어가 있으면 큰일 날 수 있음. ^^;
