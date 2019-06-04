function [X y] = loadTrainingData(path)

data = load(path);
X = data(:, 1:(columns(data) - 1));
y = data(:, columns(data));

end