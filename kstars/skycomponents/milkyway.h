/***************************************************************************
                           milkyway.h  -  K Desktop Planetarium
                             -------------------
    begin                : 2005/07/08
    copyright            : (C) 2005 by Jason Harris
    email                : kstars@30doradus.org
 ***************************************************************************/

/***************************************************************************
 *                                                                         *
 *   This program is free software; you can redistribute it and/or modify  *
 *   it under the terms of the GNU General Public License as published by  *
 *   the Free Software Foundation; either version 2 of the License, or     *
 *   (at your option) any later version.                                   *
 *                                                                         *
 ***************************************************************************/

#ifndef MILKYWAY_H
#define MILKYWAY_H

#include "skiplistindex.h"

/**
	*@class MlkyWay
    *This  stores a SkipList for each chunk.  
	*
	*@author James B. Bowlin
	*@version 0.1
	*/
class MilkyWay : public SkipListIndex
{
public:
    /**@short Constructor
     * @p parent pointer to the parent SkyComponent
     */
    MilkyWay( SkyComponent *parent );

    /** Load skiplists from file */
    void loadContours(QString fname, QString greeting);

    
    virtual void init();
    virtual void draw( QPainter& psky );
    virtual bool selected();
};
#endif
