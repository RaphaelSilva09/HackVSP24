# 🏆 Sp Quest - Gamificação do Turismo em São Paulo

## 📖 Descrição do Projeto

**Sp Quest** é uma aplicação inovadora de **low code** que revoluciona a maneira como os moradores de São Paulo exploram sua própria cidade. Utilizando a **gamificação** para motivar visitas aos pontos turísticos locais, a plataforma combina elementos inspirados em jogos como **Pokémon GO** com **tecnologias de geolocalização** para criar uma experiência interativa e envolvente. Através da navegação no mapa da cidade, os usuários podem desbloquear conquistas, participar de desafios semanais e mensais, e ganhar recompensas, transformando cada visita em uma jornada de exploração.

### 🎯 Funcionalidades Principais
- **Mapa Interativo**: Explore São Paulo em tempo real, utilizando o mapa para localizar e descobrir atrações turísticas próximas.
- **Missões e Desafios**: Participe de missões semanais e mensais, como visitar determinados pontos turísticos ou completar rotas específicas.
- **Sistema de Recompensas**: Ganhe badges e acumule pontos ao visitar locais e completar desafios, subindo no ranking geral.
- **Ranking de Usuários**: Compita com outros usuários, acompanhe sua posição no ranking e veja quem são os principais exploradores da cidade.
- **Personalização de Perfil**: Personalize seu perfil, registre seu histórico de visitas e acompanhe seu progresso em missões e conquistas.

## 🛠️ Tecnologias Utilizadas

O projeto **Sp Quest** é desenvolvido utilizando tecnologias e frameworks **low code** para facilitar a construção e manutenção da aplicação, permitindo ajustes e novas funcionalidades de forma ágil e eficiente:

- **Frontend**: FlutterFlow (baseado em Dart), Tailwind CSS, HTML5
- **Backend**: Dart com Firebase Functions
- **Banco de Dados**: Firebase Firestore
- **Geolocalização**: API do Google Maps
- **Autenticação**: Firebase Authentication
- **Gamificação**: Algoritmos personalizados para desafios e sistema de pontuação

## 💻 Configuração e Execução do Código

Siga as instruções abaixo para configurar e rodar o ambiente de desenvolvimento em sua máquina local:

1. **Instale o Dart**:  
   Baixe e instale o Dart através do [site oficial](https://dart.dev/get-dart). Siga as instruções para seu sistema operacional.

2. **Clone o Repositório**:  
   No terminal, execute o seguinte comando para clonar o repositório:
   ```bash
   git clone https://github.com/yourusername/alvo-vital.git


### Instale as Dependências:

Navegue até o diretório do projeto e instale as dependências utilizando o comando:

```
flutter pub get
```



### Configuração das Variáveis de Ambiente:

Crie um arquivo .env na raiz do projeto e adicione as seguintes variáveis:

```
API_KEY=your_api_key_here
MAPS_API_KEY=your_maps_api_key_here
FIREBASE_CONFIG=your_firebase_configuration
```

### Inicie o Servidor de Desenvolvimento:

Execute o comando abaixo para iniciar o servidor local:

```
flutter run
```