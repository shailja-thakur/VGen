import PyPDF2
import warnings
warnings.filterwarnings("ignore",category=DeprecationWarning)
import pandas as pd

import re
import string
from nltk.corpus import stopwords, brown
from nltk.tokenize import word_tokenize, sent_tokenize, RegexpTokenizer
from nltk.stem import WordNetLemmatizer

import textract

import nltk


def readPDF(filename):

    verilog_txtbook=PyPDF2.PdfFileReader(open(filename, 'rb'))    
    
    if verilog_txtbook.isEncrypted:
        verilog_txtbook.decrypt("")
        print('Document Metadata')
        print('\t')
        print(['*']*20)
        print(verilog_txtbook.getDocumentInfo())
    return verilog_txtbook


def getTotalPages(pdf):
    total_pages = pdf.numPages
    print('Total pages:',total_pages)
    return total_pages


def getPages(verilog_txtbook, total_pages, page_no=None):

    count=0
    all_text=''
    lines=[]
    if (page_no!= None):
        
        txtbook_page=verilog_txtbook.getPage(page_no)
        pg_text=txtbook_page.extractText()
        # for line in pg_text.split('.'):
        #         print(line)
        #         lines.append(line)
                
    else:
        
        while(count<total_pages):
            txtbook_page=verilog_txtbook.getPage(count)
            count+=1
            pg_text = txtbook_page.extractText()
            all_text+=pg_text
            
    if all_text != '':
        all_text=all_text
    else:
        textract.process(open(filename, 'rb'), method='tesseract', encoding='utf-8', language='english')
    
    # df = pd.DataFrame(lines)
    return all_text


def preprocess(text, toLower=False, spellCheck=False):

    """
    Converting text to lower case as in, converting "Hello" to  "hello" or "HELLO" to "hello".
    """
    
    if (spellCheck==True):
        # Specll check the words
        spell  = Speller(lang='en')
        texts = spell(text)
    
    
        
    return ' '.join([w.lower() for w in word_tokenize(text)])
    
# def tokenizeText(text):
    
    # return word_tokenize(text)


def clean_text(lower_case):
    # split text phrases into words
    words  = nltk.word_tokenize(lower_case)
    
    
    # Create a list of all the punctuations we wish to remove
    punctuations = ['.', ',', '/', '!', '?', ';', ':', '(',')', '[',']', '-', '_', '%']
    
    # Remove all the special characters
    punctuations = re.sub(r'\W', ' ', str(lower_case))
    
    # Initialize the stopwords variable, which is a list of words ('and', 'the', 'i', 'yourself', 'is') that do not hold much values as key words
    stop_words  = stopwords.words('english')
    
    # Getting rid of all the words that contain numbers in them
    w_num = re.sub('\w*\d\w*', '', lower_case).strip()
    
    # remove all single characters
    lower_case = re.sub(r'\s+[a-zA-Z]\s+', ' ', lower_case)
    
    # Substituting multiple spaces with single space
    lower_case = re.sub(r'\s+', ' ', lower_case, flags=re.I)
    
    # Removing prefixed 'b'
    lower_case = re.sub(r'^b\s+', '', lower_case)
    
    
    
    # Removing non-english characters
    lower_case = re.sub(r'^b\s+', '', lower_case)
    
    # Return keywords which are not in stop words 
    keywords = [word for word in words if not word in stop_words  and word in punctuations and  word in w_num]
    
    return keywords



