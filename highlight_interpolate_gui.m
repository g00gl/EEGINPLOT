function highlight_interpolate_gui
    % Retrieve EEG data from the base workspace
    if evalin('base', 'exist(''EEG'', ''var'')') == 0
        errordlg('Hey! Where''s your EEG data? Load a dataset first.');
        return;
    end

    EEG = evalin('base', 'EEG');
    
    % Check if EEG is valid and has data
    if ~isfield(EEG, 'data') || isempty(EEG.data)
        errordlg('Hey! Where''s your EEG data? Load a dataset first.');
        return;
    end

% Now that we know EEG data is loaded, we can safely call eeginplot
    eeginplot(EEG.data,...
        'srate', EEG.srate,...
        'events',   EEG.event);

    % If your eeginplot function uses channel locations, also pass 'eloc_file' if needed:
    % eeginplot(EEG.data, 'srate', EEG.srate, 'eloc_file', EEG.chanlocs);
end
