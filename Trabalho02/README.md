# Campus em Foco

Aplicativo Flutter de estudo para praticar navegação entre telas. Os dados são locais e o projeto usa apenas widgets básicos do Material.

## Planejamento

| Tela | Responsabilidade | Dados recebidos | Navegação |
|---|---|---|---|
| HomePage | Apresentar o campus e os cursos por categoria | Objetos locais de Campus e dos cursos | Abre DetailsPage ou ContactsPage |
| DetailsPage | Mostrar o item escolhido | Um objeto Information pelo construtor | Volta com Navigator.pop() |
| ContactsPage | Listar serviços úteis | Nenhum | Volta com Navigator.pop() |

```text
HomePage
   +---- Campus --------> DetailsPage
   +---- Curso escolhido -> DetailsPage
   +---- Contatos ------> ContactsPage
```

Campus e todos os cursos usam a **mesma** `DetailsPage`. O modelo define os campos; `campus_data.dart` cria os objetos; a Home escolhe qual objeto enviar.

## Cursos

A Home mostra três categorias expansíveis: técnicos, graduação e pós-graduação. Toque em uma categoria para ver a lista; cada curso é um objeto `Information` e abre a mesma `DetailsPage`. A lista foi conferida na [página oficial de cursos do Campus Salgueiro](https://ifsertaope.edu.br/salgueiro/educacional/cursos/) em 30/10/2026. A oferta de vagas pode variar a cada processo seletivo.

Os e-mails da tela de contatos foram conferidos nas páginas oficiais de [contatos do campus](https://ifsertaope.edu.br/salgueiro/contatos/) e do [curso de Sistemas para Internet](https://ifsertaope.edu.br/salgueiro/cursos/graduacao/tec-sis-int/). O app apenas mostra os endereços; não envia mensagens.

## Estrutura

```text
lib/
├── main.dart
├── models/
│   └── information.dart
├── data/
│   └── campus_data.dart
├── pages/
│   ├── home_page.dart
│   ├── details_page.dart
│   └── contacts_page.dart
└── widgets/
    └── information_card.dart
```

## Executar

```sh
flutter pub get
flutter run
```

Para conferir o código:

```sh
flutter analyze
flutter test
```

## Como a navegação funciona

O botão do card do Campus chama o `onTap` recebido por `InformationCard`. Nos cursos, o toque em um `ListTile` abre o item escolhido. Na `HomePage`, ambos executam `Navigator.push(context, MaterialPageRoute(...))`. `MaterialPageRoute` cria a rota da nova tela; seu `builder` constrói `DetailsPage(information: campusInformation)` ou `DetailsPage(information: course)`.

O `Navigator` mantém as telas como uma pilha. `push` coloca a nova tela no topo; `Navigator.pop(context)` retira a tela atual e revela a anterior. `context` identifica a posição do widget na árvore para encontrar o navegador.

O parâmetro `information` do construtor recebe um objeto `Information`. A `DetailsPage` lê `information.title`, `subtitle`, `description` e `icon` para montar a interface, sem guardar texto fixo de Campus ou Curso.
