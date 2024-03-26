# Hướng dẫn cài đặt

- Cài đặt docker
- Mở git bash trong project
- Nếu chạy bằng windown thì chạy 3 lệnh này trước
    - git config --global core.autocrlf input
    - git rm --cached -r .
    - git reset --hard
- Tiếp tục chạy:
    - docker-compose build (Lệnh này để build docker, chỉ cần chạy lần đầu)
    - docker-compose up (Lệnh này để khởi động project, mỗi lần khởi động thì chạy)
    - docker/bash (Lệnh này để vào bash của project trong docker )
- Khi chạy lệnh docker/bash sẽ vào được bash của project trong docker sẽ hiện root@...://opt/phone_business#. Ở đây chạy các lệnh sau:
    - bundle install (cài đặt các gem của rails)
    - yarn install (cài đặt các package của vuejs)
    - rails db:create (tạo db)
    - rails db:migrate (tạo các bảng trong db)
    - rails db:seed (tạo data master và data test)
    - rails db:drop (Chỉ chạy nếu cần reset db)
