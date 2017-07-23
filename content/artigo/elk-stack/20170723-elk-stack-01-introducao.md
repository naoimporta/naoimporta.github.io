---
draft: true
date: "2017-07-23"
categories:
  - devops
tags:
  - elk
  - serie
  - elasticsearch
  - logstash
  - kibana
  - serie-elk-stack
title: "Conhecendo as ferramentas que formam a stack ELK"
---

Logstash - Event Log pipeline - collect data or logs from various sources
Elasticsearch - Distributed Document Repository - Store and analyse json documents. Have power tools and functionalities to query and search data in documents
Kibana - Rich interface to real time visualization


##Benefits

 - Scalability : Incrível elasticidade. Isso quer dizer que os dados podem começar pequenos - escalar horizontalmente adicionando mais nós enquanto cresce
 - REalibility - Clusters elasticsearh detectam nós com falhas, para organizar e distrubuir dados automaticamente, assim seus dados sempre estarão disponíveis e segura
 - Flexibilidade: Fornece busca fulltext, além da query API, que fornece buscas multiplinguais, geolocalização, autocompletação, contextual sugestions. Logstash can interpreter multiple datasources, like logfiles, metrics, databases, etc. Unifica todas suas streams de dados. Sejam de webservers, sensors or signal data from iot devides.
 - Automation- ELK stores and automaticaly indexes json documents, making then searchable, otimiza the storage of the data on desks?
 - RESTful API - ELK provides a rich json api via https
 - User Friendly - A Integração profundaentre o es e ls helps to visualize both structured and unstructured data that is indexed in es, using this tools we can easily create charts, plots, histograms, maps. We can visualize information provides by elasticsearch in presented digested form. Thsi leads to better insights from the data
 - Supports Bigdata and its 3V() - Since elk is so scalable, robust and flexible, it can be used to process petabytes of data, and it can handle any extremes of the three vees of bigdta paradigma
 - Free and Opensource - Its absolutely free. Build in apache tool lucene, which is opensource, allowing you to  download configure and modify based in you requiredments.

In the enterprise, there are tens or hundred of applications runnings simultanesly and serving the needs of  business or consumers. The true value of elk shines when all your get all the logs originating from these applcaitions, into a single instance of elk. ELK has the capability to correlate the data comming from these different sources and trully find some amazing insights. In these scenarios, is it awesome to have all of your data agregated in one place, so that you can see the process flow and perform querys agains the logs from all application in one place. So elk stack eliminates the need to logging to hundreds of differents of log datasources and follow this logs. You can agregate all the logs and visualize then in one place.

If your logs is not agregated it will be hard to find answer to certain type of questions, even if we knew the answer.

Com a aplicação de stack elk você conseguirá responder perguntas interessantes e críticas .
 - Efetividade de uma pampanha  em um e-commerce, otimizando o ROI.
 - Otimizar as operações, descobrindo qual o merlhor horários para manutenção em sistemas( quando está sendo menos utilizado, de onde pode-se  desviar recursos para otimização)
 - Com consultas georeferencias você pode ajudar a segumentar profutos geograficamente por população ou sasionalidade.
 - Com ELK, the skus is the limit, to analize data from different angules, and really feels the power of having this data at your fingertips.

## Casos de uso
### Verizon
this is there real world exaample that the elk stack is very mature, stable, and real tested
    - Verizon: Is haversting event data from all the devices outehre at 1 million events per second. Verizon uses elk stack to store data, process it and gain insights
    - Ebay: Implements the search functionality using elasticsearhc. Search is critical feature in eaby. The users needs absolute finedgrain control of the search capabilities. They want to be able to search many different items based in theis atributtes and categories and they need to search to return results fast, so that they can buyed item before the auction is over. All this can make possible with elk stacj
    - Hotel tonight: Is a large ecommerce website, witch offers hotel booking services to their clients. It helps the users to find the best price match, for hottel acomodation based on travel needs. Not only offer the best price in the prefered dates, also offers alternatives dates witch could be shipper in price.
    - Groupon: group deal website. Search in the deals.
    - Cisco: Use ELK stack to organize the logs provides from network equipament and analize extensevily
    - the new york times: Recentemente, ele digitalizou todo seu conteúdo jornalistico, desde sua primeira publicação, has been store and indexed in elk stack. These indexed articles have been mada avaliable to readers, so we can now have the ability to search over this articles, based in informations provided, returning the information in milliseconds

Alternatives:
 - Solr - Also based in lucene - just es
   Splunk:
   Attivio: 570k + professional service - proprietary aprroch to arch
   IBM data explorer: 500k e ps. HDFS distributed architecture
   Autonomy HP 400k ps - proprietary aprroch to arch

ELk stack in the solution to startup




--------------------


Em 2004 Shay Banon creates the precursot to es called Compass. In the thirdy version of Compass, ehy realized that willbe necessary to rewritebig parts of compass to create a scalable search solution.
Em2010 he creates the firts version os es which was build from the groud up to be distributed, and use a commom interface based in json apis over http
em 2012 elasticsearch bv foi fundada provendo serviços comerciais e produtos em torno do elasticsearch e softwares relacionados
Em 2015, elasticsearch change their name to elastic


-----

O núcleo do elastic search é o lucene, uma ferramentas pesquisa em full text written in java. O elastic search e sua vasta api, adiciona funções de busca a uma aplicação. No core mais profundo, já um indexador potente. ES adiciona conteúdo a este indice e e mantêm seu ciclo de vida, permindo-nos executar consultas neste índice.
Estas são features consumidas pelo elasticsearch:
 Lucene é capaz de conseguir fast search responses, por que em vez de buscar no conteúdo, busca no índice, é como se pegassemos uma página, relacionando uma palavra, procurando no índice no final do livro em vez de procurar em cada uma das páginas pela palavra.
 No lucene, um documento é uma unidade para busca e indexação. Um index consiste de um ou mais documentos. Indexando em paredes adicionando documentos em um escritor de indice e buscando em paredes requisitando documentos de um índice via buscador em índice. Um documento lucene pode ser qualquer pedaço de informação, escrita e persistindo, indexing e searching for
 O mecanismo de busca necessita que um indice estejacriado e disponivel, isso envolve cirar uma consulta, via query parser, e manipular esse query no buscador do'índice, que retorna uma lista de resultados. O resultado provê uma lista de documentos, que matches com um criteria dada.

 Além destas, o elastic search adiciona também:

  - O elastic search adiciona melhoria na indexação e near real time search que allow businesses to gain insights from theis data in real time

  - ELK give you the power of real time  data insights with the abillity to perform data extraction from anytype of datasource. it could be a structured data source  or unstructured.

  Assim que os dados são ingested and indexed , users can query the data for fast query responses.


  Escanalando.
ES foi projetado para escanar horizontalmente e distribuidamente. É capaz de escalar para centenas de servidores e petabites de dados estruturados ou não. ES is distributed by nature, and is designed to hide the complexity, that comes along with distributed development and configuration. anytime that you start a instance of es, you are starting a node. A collection of connected nodes, is colled a cluster. If you are running a single node of es, then you are running a cluster with one node. There are thre types of nodes avaliable to a cluster.
 - Master node, witch controls the cluster
 - a Data node, that holds the data, and performs data related operations, such as CRUD, SEARCH and aggregations
 - Client node, witch can need the hole data nor became the master node, it behaves it behaves like a small router and is used to foward cluster level requests to the master node and data related requests, such as search to the approprieted data nodes.

 the distributed aspect of ES is largelly transparent. ES trys hard to hyde the complexity of distributed systems.


 XXXX here there Some of the operations happening automatically under the hood, partitioning your documents into different containers or shards, witch can be sotred in a single nodes or in multiple nodes. Balancing this shards accross the nodes in your cluster, to spread the indexing and search load. Duplicating each shard to provide redundant copies of your data to prevent data loss in case of hardware faillure. routing requests from any node in the cluster to the nodes that holds that data you are interested in. Seamlesly integrated new nodes as  your cluster grows are redibuindo shards to recovering node loss.

 The discovering module is responsable fordiscovery nodes within a cluster as ellecting a master node. Zen discovery in the builtin discovery module for es and is the deft mecanism to discovery. it provides unicast discovery, but can extends to suport cloud enironment and other forms of discovery.
 When you store data in es, it is stored inside a index wich is a place to store related data. Index is basically logical namespace or groupping of one or onde phisical shards of data. A shard is a low level work unit that holds just one slice of all the data in the index. A shard is a single instanec of lucene and is complete search engine its own right. All documents are stored and indexed in shards but ower applications dont talk to then directely, instead, they talk to an index
