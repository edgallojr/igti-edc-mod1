# HCL - Hashicorp Configuration Languagem
# Linguagem Declarativa

resource "aws_s3_bucket" "datalake" {
  #Parâmetros de Configuração do Recurso Escolhido
  bucket = "datalake-igti-mod1"
  acl    = "private"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
  tags = {
    IES   = "IGTI"
    CURSO = "EDC"
  }
}

resource "aws_s3_bucket_object" "docentes_co" {
  bucket = aws_s3_bucket.datalake.id
  key    = "raw-data/censo-escolar-2020/data/docentes_co.CSV"
  acl    = "private"
  source = "../data/docentes_co.CSV"
}

resource "aws_s3_bucket_object" "docentes_nordeste" {
  bucket = aws_s3_bucket.datalake.id
  key    = "raw-data/censo-escolar-2020/data/docentes_nordeste.CSV"
  acl    = "private"
  source = "../data/docentes_nordeste.CSV"
}

resource "aws_s3_bucket_object" "docentes_norte" {
  bucket = aws_s3_bucket.datalake.id
  key    = "raw-data/censo-escolar-2020/data/docentes_norte.CSV"
  acl    = "private"
  source = "../data/docentes_norte.CSV"
}

resource "aws_s3_bucket_object" "docentes_sudeste" {
  bucket = aws_s3_bucket.datalake.id
  key    = "raw-data/censo-escolar-2020/data/docentes_sudeste.CSV"
  acl    = "private"
  source = "../data/docentes_sudeste.CSV"
}

resource "aws_s3_bucket_object" "docentes_sul" {
  bucket = aws_s3_bucket.datalake.id
  key    = "raw-data/censo-escolar-2020/data/docentes_sul.CSV"
  acl    = "private"
  source = "../data/docentes_sul.CSV"
}

resource "aws_s3_bucket_object" "escolas" {
  bucket = aws_s3_bucket.datalake.id
  key    = "raw-data/censo-escolar-2020/data/escolas.CSV"
  acl    = "private"
  source = "../data/escolas.CSV"
}

resource "aws_s3_bucket_object" "gestor" {
  bucket = aws_s3_bucket.datalake.id
  key    = "raw-data/censo-escolar-2020/data/gestor.CSV"
  acl    = "private"
  source = "../data/gestor.CSV"
}

resource "aws_s3_bucket_object" "matricula_co" {
  bucket = aws_s3_bucket.datalake.id
  key    = "raw-data/censo-escolar-2020/data/matricula_co.CSV"
  acl    = "private"
  source = "../data/matricula_co.CSV"
}

resource "aws_s3_bucket_object" "matricula_nordeste" {
  bucket = aws_s3_bucket.datalake.id
  key    = "raw-data/censo-escolar-2020/data/matricula_nordeste.CSV"
  acl    = "private"
  source = "../data/matricula_nordeste.CSV"
}

resource "aws_s3_bucket_object" "matricula_norte" {
  bucket = aws_s3_bucket.datalake.id
  key    = "raw-data/censo-escolar-2020/data/matricula_norte.CSV"
  acl    = "private"
  source = "../data/matricula_norte.CSV"
}

resource "aws_s3_bucket_object" "matricula_sudeste" {
  bucket = aws_s3_bucket.datalake.id
  key    = "raw-data/censo-escolar-2020/data/matricula_sudeste.CSV"
  acl    = "private"
  source = "../data/matricula_sudeste.CSV"
}

resource "aws_s3_bucket_object" "matricula_sul" {
  bucket = aws_s3_bucket.datalake.id
  key    = "raw-data/censo-escolar-2020/data/matricula_sul.CSV"
  acl    = "private"
  source = "../data/matricula_sul.CSV"
}

resource "aws_s3_bucket_object" "turmas" {
  bucket = aws_s3_bucket.datalake.id
  key    = "raw-data/censo-escolar-2020/data/turmas.CSV"
  acl    = "private"
  source = "../data/turmas.CSV"
}

provider "aws" {
  region = "us-east-2"
}