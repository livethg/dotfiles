{
  colors,
  ...
}:

# Author: Manuel Schneider <https://github.com/ManuelSchneid3r>
''
* {
  border:           none;
  color:            #81A1C1;
  background-color: #2E3440;
}

#frame {
  background-color: transparent;
  border-width:     0px;

  max-width: 600px;
  min-width: 600px;
}

#inputLine {
  padding: 8px;

  border-radius: 8px;
  border:        1px solid #4C566A;

  font-size: 26px;
  color:     #81A1C1;

  selection-background-color: #3B4252;
  selection-color:            #81A1C1;
}

#settingsButton {
  background-color: none;
  color:            #4C566A;

  min-height: 14px;
  max-height: 14px;

  min-width: 14px;
  max-width: 14px;

  margin:  6px 6px 0px 0px;
  padding: 2px;
}

QListView {
  margin-top: 4px;

  border-radius: 8px;
  border:        1px solid #4C566A;

  color: #5E81AC;

  selection-background-color: #3B4252;
  selection-color:            #81A1C1;
}

QListView::item {
  border-radius: 6px;
  padding:       4px;
}

QListView::item:selected {
  background-color: #3B4252;
}

QListView#resultsList {
  font-size: 20px;
  icon-size: 34px;
  padding:   4px 8px 4px 8px;
}

QListView#resultsList::item {
  margin: 4px 0px 4px 0px;
  height: 44px;
}

QListView#actionList {
  font-size: 16px;
  padding:   6px 8px 6px 8px;
}

QListView#actionList::item {
  margin: 2px 0px 2px 0px;
}

QListView QScrollBar::add-line:vertical, QScrollBar::sub-line:vertical,
QListView QScrollBar::up-arrow:vertical, QScrollBar::down-arrow:vertical,
QListView QScrollBar::add-page:vertical, QScrollBar::sub-page:vertical {
  background: transparent;
  border:     0px;

  height: 0px;
  width:  0px;
}

QListView QScrollBar:vertical {
  background: transparent;
  width:      3px;
}

QListView QScrollBar::handle:vertical {
  background:    #4C566A;
  border-radius: 1px;
  min-height:    24px;
}
''
