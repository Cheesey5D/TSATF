waitUntil {!isNull(findDisplay 46)};
(findDisplay 46) displaySetEventHandler ["KeyDown","_this call keyspressed"];

keyspressed = {
    _handled = false;
    switch (_this select 1) do {

    case 199: {//Home key
            _handle = createDialog "ts_famila";
        };
    };
    _handled;
};
