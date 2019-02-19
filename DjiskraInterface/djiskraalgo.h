#ifndef DJISKRAALGO_H
#define DJISKRAALGO_H

#include <iostream>
#include <QVector>
#include <QObject>
#include <QtCore>
#include <QtGui>

class DjiskraAlgo : public QObject
{
    Q_OBJECT

    Q_PROPERTY(QString dest READ dest WRITE setDest NOTIFY destChanged)
    Q_PROPERTY(QString src READ src WRITE setSrc NOTIFY srcChanged)
    Q_PROPERTY(QVector <int> path READ path WRITE setPath NOTIFY pathChanged)
    Q_PROPERTY(int distance READ distance WRITE setDistance NOTIFY distanceChanged)

public:
    explicit DjiskraAlgo(QObject *parent = nullptr);

    Q_INVOKABLE void initialiser();

    //hichem part :

    struct noeud
    {
        int poids;
        QString nom;
        bool parcouru;
    };

    void initialiser_ville(noeud& ville);
    int indice (QVector <noeud> villes);
    int smallest_node(QVector <noeud> villes);

    //

signals:

    void destChanged();
    void pathChanged();
    void distanceChanged();
    void srcChanged();

public slots:

private:
    QString data_dest;
    QString data_src;
    QVector <int> chemin;
    int     _distance;

    QString dest();
    void setDest(QString destination);

    QString src();
    void setSrc(QString source);

    QVector <int> path();
    void setPath(QVector <int> empty);

    int  distance();
    void setDistance(int empty);

    //hichem part :

    QVector <noeud> villes;
    QVector <int> antecedent;
    QVector <QVector<int> > distances;

    //
};

#endif // DJISKRAALGO_H
