function Feature = sym6DwtEnergyFeature(X)

[c,s]=wavedec2(X,4,'sym6');
[Ea,Eh,Ev,Ed] = wenergy2(c,s);


%-----------------------------------------Entropy Features-----------------------------

%----------------Level1--------------------


Feature = [Eh,Ev,Ed];
end