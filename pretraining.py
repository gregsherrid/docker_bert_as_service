from bert_serving.client import BertClient
bc = BertClient(check_length=False)

txt = input("Name output file: ") 
txt +='.txt'
encoded_array = bc.encode(["The antagonist in the test is Julian.  Julian is the antagonist because he was a bully to Auggie through the entire school year and anybody who is as mean as Julian should be a 'bad guy.'  If I was getting bullied by Julian I would think of him as a bully or bad guy.","The book, House of Secrets, reminds me of Harry Potter because both books involve three main people going on adventures. Also, the two novels involve some magic. The two novels are different because House of Secrets is about three kids being transported into a world of books(all by the same author), while Harry Potter is about a boy who turns out to be a wizard."])

print(encoded_array)

with open(txt, 'w') as filehandle:  
    for listitem in encoded_array:
        filehandle.write('%s\n' % listitem)
