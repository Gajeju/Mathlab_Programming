function inv_A = use_jordan(A)

% 2015108223 �赿�� ���콺 ������ �ҰŹ��� �̿��Ͽ� ����� ���ϱ�

[m,n] = size(A);
I = eye(n);     
A = [A I];

%��ﰢ���ȭ
for i=1:n-1
    for j = n+1:n
        A(j,:) = A(j,:) + (-A(j,i)/A(i,i) * A(i,:));
    end
end

%�ϻﰢ���ȭ
for i=n:-1:2
    for j=i-1:-1:1
        A(j,:) = A(j,:) + (-A(j,i)/A(i,i) * A(i,:));
    end
end

%�ִ밢��Ҹ� 1�� �����
for i=1:m
    A(i,:) = A(i,:) / A(i,i);
end

%����� ����
inv_A = A(:,n+1:2*n);
endq