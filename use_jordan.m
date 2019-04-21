function inv_A = use_jordan(A)

% 2015108223 김동현 가우스 조르단 소거법을 이용하여 역행렬 구하기

[m,n] = size(A);
I = eye(n);     
A = [A I];

%상삼각행렬화
for i=1:n-1
    for j = n+1:n
        A(j,:) = A(j,:) + (-A(j,i)/A(i,i) * A(i,:));
    end
end

%하삼각행렬화
for i=n:-1:2
    for j=i-1:-1:1
        A(j,:) = A(j,:) + (-A(j,i)/A(i,i) * A(i,:));
    end
end

%주대각요소를 1로 만들기
for i=1:m
    A(i,:) = A(i,:) / A(i,i);
end

%역행렬 추출
inv_A = A(:,n+1:2*n);
endq