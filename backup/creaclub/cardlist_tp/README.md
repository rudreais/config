# TP Card/CardList

* Documents autorisés:
- Exemple de code de l'étudiant
- Internet

## Sujet

* Faire une classe Card:
	- données
	- affichage simple
	- comparaison
* Faire une classe CardList:
	- "implémentation" de std::vector pour la classe Card
	- méthode propre
* Bonus
	- création liste random non truquée de N cartes (non optimisé)
	- trier liste

### class Card

```cpp
// getters + setters
int _rank;
char _suit;
```

```cpp
void display() const;
bool lesserThan(const Card&) const;
bool equals(const Card&) const;
bool
```

### class CardList

```cpp
Card _cards[];
int _size;
int _capacity;

Card& at(int i);
int size() const;
void push_back(const Card&);
void remove(int i);

static CardList makeRandom(int n);
void sort();
```
