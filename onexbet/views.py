from django.shortcuts import render


def main(request):
    return render(
        request,
        'onexbet/main.html',
        {'promocodes': [{'code': 'CODE1'}, {'code': 'CODE2'}]}
    )
