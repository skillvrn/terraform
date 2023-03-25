# Terraform

## Авторизация на облаке

Каждые 12 часов нужно пересоздавать TOKEN для доступа к сервисному аккаунту.
Чтобы сгенерировать новый необходимо на локальной машине выполнить:

```
yc init --federation-id <ID>
yc iam create-token
```

Скопировать полученный токен и записать изменение в переменную `iam_token` в файле `terraform.tfvars`

## Доступ на ВМ поле создания

В файл meta.yml добавить свой ssh-ключ

## terraform.tfstate

Статус сохраняется в бакет S3 на Object Storage. Для доступа к нему, нужно использовать секретный ключ сервисного аккаунта.
Данные прописывать на локальной машине, откуда происходит запуск terraform'а, в файл config.s3.tfbackend (добавлен в gitignore)

## Команды для выполнения

```bash
terraform init
terraform plan
terraform apply --auto-approve
terraform destroy --auto-approve
```
