import QtQuick 1.1;
import org.kde.plasma.core 0.1 as PlasmaCore;
import org.kde.plasma.components 0.1 as Plasma;
import org.kde.plasma.graphicswidgets 0.1 as PlasmaWidgets;
import org.kde.qtextracomponents 0.1 as QtExtra;

Item {
	clip: true
	anchors.fill: parent
	
	GridView {
		id: activitiesGrid
		anchors {
			top: parent.top
			left: parent.left
			bottom: parent.bottom
			right: parent.right
		}
		
		cellWidth: 260
		cellHeight: 180
		model: activitiesModel
		delegate: ActivityItem {}
	}
	
	Plasma.ScrollBar {
		anchors {
			top: activitiesGrid.top
			right: activitiesGrid.right
			bottom: activitiesGrid.bottom
		}
		flickableItem: activitiesGrid
	}

}