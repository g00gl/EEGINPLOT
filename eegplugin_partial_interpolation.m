function vers = eegplugin_partial_interpolation(fig, try_strings, catch_strings)
    vers = '1.0';

    % Get the folder where this plugin is located
%     pluginFolder = fileparts(which('eegplugin_partial_interpolation.m'));

    % Add the plugin folder and subfolders to the MATLAB path
%     addpath(genpath(pluginFolder));

    % Add a menu item to EEGLAB
    menu = findobj(fig, 'tag', 'tools');
    uimenu(menu, 'Label', 'Partial Interpolation', ...
           'Callback', 'highlight_interpolate_gui;');
end

