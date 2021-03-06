# La haut lite

## How to use

La config globale, commune à tous les environnements de développement, se trouve dans `_config.yml`. C'est la config qui est utilisée automatiquement par les pages github en production, on y trouve donc aussi les éléments de configuration propres à la production.

Dans `_config.dev.yml` ne figurent **que** les éléments spécifiques au développement local. Ainsi, en lançant la commande ci-dessous, c'est comme lancer le fichier `_config.yml`, mais avec les éléments spécifiques de `_config.dev.yml`.

### Développement

Lancer le serveur :
```bash
bundle exec jekyll serve --config _config.yml,_config.dev.yml
```
Votre site est visible sur [localhost:4000](localhost:4000)

## Les spécificités

- Un dossier pour les pages, que je n'aime pas voir traîner (`_pages`). Du coup, ne pas oublier de mettre le permalink dans le frontmatter.
- un fichier de `_config` par environnement


## Ressources

### Twitter feed

- https://twitter.com/settings/widgets/875878165830414341/edit
- https://dev.twitter.com/web/embedded-timelines
- Customisation style : https://dev.twitter.com/web/overview/css

### Netlify

- [CMS](https://www.netlifycms.org/)
- [Netlify docs](https://www.netlify.com/docs/)
