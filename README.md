# Terraform

## Авторизация на облаке

Каждые 12 часов авторизация протухает из-за таймаута токена.
Чтобы сгенерировать новый необходимо на локальной машине выполнить:

```
yc iam create-token
```

Скопировать полученный токен и записать изменение в переменную `iam_token` в файле `terraform.tfvars`

## Доступ на ВМ поле создания

В файл meta.yml добавить свой ssh-ключ

## Команды для выполнения

- `terraform init`
- `terraform plan`
- `terraform apply --auto-approve`
- `terraform output`
- `terraform destroy --auto-approve`
