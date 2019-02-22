#include "djiskraalgo.h"

using namespace std;

DjiskraAlgo::DjiskraAlgo(QObject *parent) : QObject(parent),data_dest("_"), data_src("_")
{
    initialiser();

    distances.push_back({0, 12, 4, 0, 0, 0, 0});
    distances.push_back({12, 0, 0, 5, 3, 0, 0});
    distances.push_back({4, 0, 0, 2, 0, 10, 0});
    distances.push_back({0, 5, 2, 0, 10, 0, 0});
    distances.push_back({0, 3, 0, 10, 0, 0, 2});
    distances.push_back({0, 0, 10, 0, 0, 0, 4});
    distances.push_back({0, 0,  0, 0, 2, 4, 0});

}

QString DjiskraAlgo::dest()
{
    return data_dest;
}

void DjiskraAlgo::setDest(QString destination)
{
    data_dest=destination;

    setPath(chemin);
}

QString DjiskraAlgo::src()
{
    return data_src;
}

void DjiskraAlgo::setSrc(QString source)
{
    initialiser();

    data_src=source;

    for(int i=0;i<villes.size();i++){

        if(villes[i].nom==data_src){

            villes[i].poids = 0;
        }
    }
}

QVector <int> DjiskraAlgo::path()
{
    int index = indice(villes);

    chemin.push_back(index);

    while(index != -1){

       chemin.push_back(antecedent[index]);
       index = antecedent[index];
    }

    chemin.pop_back();

    return chemin;
}

void DjiskraAlgo::setPath(QVector <int> empty)
{
    while(villes[indice(villes)].parcouru == false)
        {
            //On cherche le noeud ayant le poids le plus faible et qui n'a pas encor été parcouru

            int i_low;
            i_low = smallest_node(villes);
            villes[i_low].parcouru = true;

            if(villes[indice(villes)].parcouru == true)
                continue;

            //On cherche les voisin
            for (int j = 0 ; j < distances[i_low].size() ; j++)
            {


               if (distances[i_low][j] != 0) //si il s'agit du voisin de la ville en question
                {
                    if(villes[j].parcouru == false) // et que ce voisin n'est pas encor visité
                    {

                        if(villes[j].poids > villes[i_low].poids + distances[i_low][j])

                        {

                          villes[j].poids = villes[i_low].poids + distances[i_low][j];
                          antecedent[j] = i_low; //on stoke l'indice de l'antécédent du voisin pour créer une piste
                        }
                    }
                }
            }
        }

        setDistance( villes[indice(villes)].poids );

        emit pathChanged();
}

int DjiskraAlgo::distance()
{
    return _distance;
}

void DjiskraAlgo::setDistance(int empty)
{
    _distance = empty;
    emit distanceChanged();
}


int DjiskraAlgo::indice(QVector<noeud> villes)
{
    int index(0);

    for (int i = 0 ; i < villes.size() ; i++)
        {
            if(data_dest == villes[i].nom)
                index = i;
        }
        return index;
}

int DjiskraAlgo::smallest_node(QVector<noeud> villes)
{
    vector <int> visited_index;

      for(int i = 0; i < villes.size() ; i++)
      {
          if(villes[i].parcouru == false)
              visited_index.push_back(i);
      }


      int i_low(0);

      for (int j = 1 ; j < visited_index.size() ; j++)
      {
          if(villes[visited_index[j]].poids < villes[visited_index[i_low]].poids)
          {
              i_low = j;
          }
      }

      return visited_index[i_low];
}

void DjiskraAlgo::initialiser()
{
    chemin.clear();

    antecedent.resize(7);

    data_src = "_";
    data_dest = "_";

    for (int i = 0 ; i < antecedent.size() ; i++){
        antecedent[i] = -1 ;
    }

    villes.resize(7);

    QString nom_villes[7] = {"A","B","C","D","E","F","G"};

    for (int i = 0 ; i < villes.size() ; i++)
        {
        villes[i].nom = nom_villes[i];
        villes[i].poids = 999;
        villes[i].parcouru = false;
        }

    setDistance(0);
}



