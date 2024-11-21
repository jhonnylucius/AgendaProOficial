# AgendaProOficial
AgendaPRO é uma aplicação moderna e prática para conectar prestadores de serviços e clientes, facilitando o agendamento de serviços com eficiência e simplicidade!


# 🚀 Passo a Passo Detalhado para Configuração do Ambiente Flutter

## 1️⃣ Instalação e Configuração Inicial

### 🛠️ **Programas Necessários**

#### 🐦 Flutter SDK:
- Baixe e instale a última versão do [Flutter SDK](https://docs.flutter.dev/get-started/install).
- Atualize o Dart SDK, que vem integrado ao Flutter:
  ```bash
  flutter upgrade
  ```

#### 🤖 Android Studio:
- Baixe e instale a última versão do [Android Studio](https://developer.android.com/studio).
- Instale as ferramentas do SDK Android no Android Studio (SDK Manager):
  - Certifique-se de que as APIs mais recentes estão instaladas.

#### ☕ Java Development Kit (JDK):
- Baixe e instale a versão 17 ou superior do [OpenJDK](https://openjdk.org/).
- Configure a variável de ambiente `JAVA_HOME` no Windows.

---

## 2️⃣ Configuração do Flutter no Android Studio

### 🔌 **Configure o Flutter Plugin:**
1. Abra o Android Studio.
2. Vá em `File > Settings > Plugins` e instale os plugins **Flutter** e **Dart**.

### 📱 **Crie ou Configure um Emulador:**
1. Vá em `Tools > Device Manager`.
2. Crie um novo emulador com a API mais recente.

---

## 3️⃣ Teste se o Flutter está Funcionando

No terminal, execute:
```bash
flutter doctor
```
Certifique-se de que todas as dependências estão corretamente configuradas. O resultado do comando acima devera esta ok como o exemplo abaixo

```
Doctor summary (to see all details, run flutter doctor -v):
[√] Flutter (Channel stable, 3.24.5, on Microsoft Windows [versÆo 10.0.22631.4460], locale pt-BR)
[√] Windows Version (Installed version of Windows is version 10 or higher)
[√] Android toolchain - develop for Android devices (Android SDK version 34.0.0)
[√] Chrome - develop for the web
[√] Visual Studio - develop Windows apps (Ferramentas de Build do Visual Studio 2019 16.11.38)
[√] Android Studio (version 2024.2)
[√] IntelliJ IDEA Ultimate Edition (version 2024.2)
[√] VS Code (version 1.95.3)
[√] Connected device (3 available)
[√] Network resources
```

---

Pronto! 🎉 Seu ambiente de desenvolvimento está configurado para começar a desenvolver projetos incríveis com **Flutter** e **Dart**!
