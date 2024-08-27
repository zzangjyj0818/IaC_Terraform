# terraform init
# 테라폼 코드에서 사용된 구문을 기반으로 필요한 프로바이더 플러그인을 찾고 설치하는 과정이 실행.

# terraform validate
# 테라폼 구성 파일의 유효성을 확인


# terraform [global options] plan [options]
# 테라폼으로 적용할 인프라의 변경 사항에 관한 실행 계획을 생성하는 동작
# 출력되는 결과를 확인하여 어떤 변경이 적용될지 사용자가 미리 검토
# 1. 테라폼 실행 이전의 상태와 비교해 현재 상태가 최신화되었는지 확인
# 2. 적용하고자 하는 구성을 현재 상태와 비교하고 변경점을 확인
# 3. 구성이 적용되는 경우 대상이 테라폼 구성에 어떻게 반영되는지 확인

# terraform plan -detailed-exitcode
# 0 - 변경 사항이 없는 성공
# 1 - 오류가 있음
# 2 - 변경 사항이 있는 성공

# terraform plan -out=<name>
# 파일 이름이 정해져 플랜 결과가 생성
# 바이너리 형태이기 때문에 내용을 확일할 수 없음

# terraform apply <name>
# 위에서 플랜 결과 파일을 바탕으로 작업을 실행

# terraform [global options] apply [options]
# plan에서 작성된 적용 내용을 토대로 작업을 실행


# 테라폼은 선언적 구성 관리를 제공하는 언어로 멱등성을 가짐
# 추가로 설명될 상태를 관리하기 때문에 동일한 구성에 대해서는 다시 실행하거나 변경하는 작업을 수행하지 않음

# terraform [global options] destory [options]
# 테라폼 구성에서 관리하는 모든 개체를 제거하는 명령어

resource "local_file" "abc" {
  content  = "abc!"
  filename = "${path.module}/abc.txt"
}