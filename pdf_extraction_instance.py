import glob

l=[]
# read files 
files={}
# def clean_text(content):
    
def clean_text(content):
    # Getting rid of all the words that contain numbers in them
    # content = re.sub('\w*\d\w*', '', content).strip()
    # get rid of patterns like: Example 1-2, Figure 4-6, Exercise 2-5
    content=re.sub(r'\s*\w*\s+\d+-\d+\.\s*','\n',content)
    content=re.sub(r'\s*[0-9]+\.([0-9]+\.*)*\s*','',content)
    content=re.sub(r'Chapter\s*\d+','\n',content)
    content=re.sub(r'Chapter\s*\w+','\n',content)
    # c=re.sub(r'Figure\s*\w+','\n',c)
    # c=re.sub(r'Figure\s*\d+','\n',c)
    # c=re.sub(r'Example\s*\w+','\n',c)
    # c=re.sub(r'Example\s*\d+','\n',c)
    content=re.sub(r'\w\.\d','',content)
    content=re.sub(r'C\s+h\s+a\s+p\s+t\s+e\s+r\s*\w+','\n',content)
    content=re.sub(r'C\s+h\s+a\s+p\s+t\s+e\s+r\s*\d+','\n',content)
    content=re.sub(r'C\s+H\s+A\s+P\s+T\s+E\s+R\s*\d+','\n',content)
    content=re.sub(r'C\s+H\s+A\s+P\s+T\s+E\s+R\s*\w+','\n',content)
    # c=re.sub(r'Week\s+\d+\s+Class\s+\d+','\n',c)
    content=re.sub(r'\s*[0-9]+\s*','',content)
    content="".join([s for s in content.strip().splitlines(True) if s.strip("\r\n")])
    
    return content

# print(glob.glob('/home/st4920/workspace/verilog_textbooks/*.pdf'))
l=[]
for filename in files:
    # print(filename)
    ids=files[filename].split('-')
    
    pdf = fitz.open(filename)

    nPages=pdf.pageCount
    # meta=pdf.metadata
    # print(meta)
    previous=''
    for n in range(int(ids[0]),int(ids[1])):
            
            
            if n == int(ids[0]):
                
                page = pdf.load_page(n)
            
                current = page.get_text('text')
                current=clean_text(current)
                
                temp=pdf.load_page(n+1)
                temp=temp.get_text('text')
                temp=clean_text(temp)
                
                right=(temp[0:len(temp) // 2])
                content=current+'\n'+right
                l.append(content)
                
                left=current
                current=temp
                # print('******************************************************************', len(content))
                # print(content)
            elif ((n>int(ids[0])) and (n<int(ids[1]))):
                
                # print(n+1)
                if((n+1) < nPages):
                    left=(left[len(left) // 2:] )
                    
                    temp=pdf.load_page(n+1)
                    temp=temp.get_text('text')
                    temp=clean_text(temp)

                    right=(temp[0:len(temp) // 2])

                    content=left+'\n'+current+'\n'+right
                    # print('******************************************************************', len(content))
                    l.append(content)

                    left=current
                    current=temp
                    
                # print(content)
                
            elif n==int(ids[1]):
                left=(left[len(left) // 2:] )
                content=left+'\n'+current
                
                l.append(content)
                # print('******************************************************************', len(content))
                # print(content)
                
    # print(len(l))    
    
df = pd.DataFrame(l)
df.columns = ['text']
print(df.head())


