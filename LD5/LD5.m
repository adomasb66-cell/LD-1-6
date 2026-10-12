%%
A = [1 2 3; 4 5 6; 7 8 9];
C = num2cell(A);

C{2, 2} = [];

disp(C);
tuscios = cellfun(@isempty, C);
disp(tuscios);

%%
while true
    n = input('Įveskite žmogaus amžių: ');

    if isnumeric(n) && isscalar(n) && isreal(n) && n > 0 && n < 120
        break;
    else
        disp('Netinkamas amžius. Turi būti 0 < n < 120.');
    end
end

switch true
    case n < 1
        disp('Mažylis');
    case n < 13
        disp('Vaikas');
    case n < 18
        disp('Paauglys');
    case n < 60
        disp('Suaugęs');
    otherwise
        disp('Senelis');
end

%%

sakinys = input('Įveskite sakinį: ', 's');

rezultatas = '';
zodziai = 0;
tarpas = true;

for i = 1:length(sakinys)
    if sakinys(i) ~= ' '
        if tarpas
            zodziai = zodziai + 1;

            if zodziai > 1
                rezultatas = [rezultatas ' '];
            end
        end

        rezultatas = [rezultatas sakinys(i)];
        tarpas = false;
    else
        tarpas = true;
    end
end

disp(rezultatas);
disp(['Žodžių skaičius: ' num2str(zodziai)]);