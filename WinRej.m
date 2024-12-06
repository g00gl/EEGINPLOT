function Win_chan_select = WinRej
% WinRej() - Retrieves the 'winrej' variable from the 'EEGINPLOT' figure.
%
% Output:
%    Win_chan_select - The 'winrej' variable from 'eegplot_interp'.
% global Win_chan_select

fig_handle = findobj('Tag', 'EEGINPLOT');
if isempty(fig_handle)
    error('EEGINPLOT figure not found.');
end

g = get(fig_handle, 'UserData');
Win_chan_select = g.winrej;

% Assign Win_chan_select to base workspace
assignin('base', 'Win_chan_select', Win_chan_select);

% Ensure 'winrej' is not empty
if isempty(Win_chan_select)
    errordlg('No segments selected for interpolation.');
    return;
end

% Retrieve the EEG dataset from the base workspace
EEG = evalin('base', 'EEG');

% Perform interpolation
EEG = segment_interpolation(EEG, Win_chan_select);

% Update the EEG dataset in the base workspace
assignin('base', 'EEG', EEG);

% Optionally, display a message
msgbox('Interpolation completed and EEG dataset updated.');
end
