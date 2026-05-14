# 소개
Mullvad Browser, Brave Origin의 초기 설정을 자동화하고

<br>

<img width="1200" height="1054" alt="Image" src="https://github.com/user-attachments/assets/cfa95690-9c07-4523-bd7e-7cb8889d6535" />

Linux Mint webapp-manager와 호환되는 웹 앱을 생성합니다.

<br>

# 설치
~/bin 폴더에 파일을 다운로드 합니다.

chmod +x reinstall webapp

<br>

# 사용 예시
reinstall mullvad-browser

reinstall brave-origin

<br>

webapp install Grok mullvad-browser grok.com

webapp install Claude brave-origin claude.ai/new?incognito

webapp install 나무위키 mullvad-exclude mullvad-browser namu.wiki -priavte -dark

webapp install 'Truth Social' brave-origin truthsocial.com/@realDonaldTrump

<br>

# 지원 명령어
reinstall mullvad-browser

reinstall brave-origin

webapp install [NAME] [PREFIX] mullvad-browser [URL]

webapp install [NAME] [PREFIX] mullvad-browser [URL] -priavte

webapp install [NAME] [PREFIX] mullvad-browser [URL] -priavte -dark

webapp install [NAME] [PREFIX] brave-origin [URL]

webapp list

webapp remove [NAME]

<br>

[PREFIX] 입력은 선택이며 mullvad-exclude를 입력할 수 있습니다.

reinstall mullvad-browser 명령어는 Dark Reader 최신 버전의 다운로드를 포함합니다.
