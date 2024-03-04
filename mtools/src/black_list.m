function list = black_list()
%BLACK_LIST returns a list of problems that are intended to be avoided.

list = [];

% As of 20230426, the objective function of HS67 takes infinite time to be evaluated at some
% points, e.g., [88.1351318; 12829.9219; 1.0e-5], maybe due to an infinite cycling.
list = [list, { ...
    'HS67', ...
    }];
    
% The MEX function of the following problem crashes.
list = [list, { ...
    'BLEACHNG', ...
    }];

% The following problems take so much resource that MATLAB get killed.
list = [list, {...
    'BA-L73', ...
    }];

% For the following problems, macup takes an excessively long time.
list = [list, {...
    'BA-L52', ...
    'BA-L52LS', ...
    }];

% For the following problems, mcutest fails because it requests more memory than allowed by MATLAB.
list = [list, { ...
    'BA-L16', ...
    'BDRY2', ...
    'CYCLIC3', ...
    'NET4', ...
    'OSCIGRNE', ...
    'PDE1', ...
    'PDE2', ...
    'RDW2D51F', ...
    'RDW2D51U', ...
    'RDW2D52B', ...
    'RDW2D52F', ...
    'RDW2D52U', ...
    'REPEAT', ...
    'TWOD', ...
    'YATP1CNE', ...
    'YATP1NE', ...
    'YATP2CNE', ...
    'YATP2SQ', ...
    }];
