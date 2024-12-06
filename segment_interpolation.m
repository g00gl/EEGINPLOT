function EEG = segment_interpolation(EEG, winrej)
% segment_interpolation() - Interpolates bad channels in specified segments.
%
% Usage:
%    >> EEG = segment_interpolation(EEG, winrej);
%
% Inputs:
%    EEG    - EEGLAB EEG structure.
%    winrej - Matrix containing rejection windows and channels.
%
% Output:
%    EEG    - EEG structure with interpolated data.

% Loop through each segment
for idx = 1:size(winrej, 1)    % number of bad segments
    start_sample = round(winrej(idx, 1));
    end_sample = round(winrej(idx, 2));
    bad_channels = find(winrej(idx, 6:end));  % Channels marked for interpolation
    
    % Skip if no channels are marked
    if isempty(bad_channels)
        continue;
    end
    
    % Create a temporary EEG structure for the segment
    EEG_segment = EEG;
    EEG_segment.data = EEG_segment.data(:, start_sample:end_sample);
    
    % Interpolate bad channels in the segment
    EEG_segment = pop_interp(EEG_segment, bad_channels, 'spherical');
    
    % Replace the data in the original EEG structure
    EEG.data(:, start_sample:end_sample) = EEG_segment.data;
    
end