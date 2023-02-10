# LLMs for Verilog 

*Title*: [__Benchmarking Large Language Models for Automated Verilog RTL Code Generation__](https://arxiv.org/abs/2212.11140)

*Authors*: [Shailja Thakur](https://shailja-thakur.github.io/), [Baleegh Ahmad](), [Zhenxing Fan](), [Hammond Pearce](), [Benjamin Tan](), [Ramesh Karri](), [Brendan Dolan-Gavitt](), and [Siddharth Garg]() 

Automating hardware design could obviate a significant amount of human error from the engineering process and lead to fewer errors. 
Verilog is a popular hardware description language to model and design digital systems, thus generating Verilog code is a critical first step. 
Emerging large language models (LLMs) are able to write high-quality code in other programming languages. 
In this paper, we characterize the ability of LLMs to generate useful Verilog. For this, we fine-tune pre-trained LLMs on Verilog datasets collected from GitHub and Verilog textbooks.
We construct an evaluation framework comprising test-benches for functional analysis and a flow to test the syntax of Verilog code generated in response to problems of varying difficulty. 
Our findings show that across our problem scenarios, the fine-tuning results in LLMs more capable of producing syntactically correct code (25.9\% overall).
Further, when analyzing functional correctness, a fine-tuned open-source CodeGen LLM can outperform the state-of-the-art commercial Codex LLM (6.5\% overall).

<!---
<p align="center">
  <img src="assets/two.gif" width="60%">
</p>
-->

## Training and Fine-tuning

Training details can be accessed here: https://github.com/shailja-thakur/CodeGen-Fine-Tuning

Evaluation scripts will be updated in sometime.
<!--
https://github.com/shailja-thakur/benchmarking-LLM-Verilog/scripts
-->
## Sampling with HuggingFace

The models are available on the [HuggingFace Hub](https://huggingface.co/models?search=verilog) with a Jupyter notebook [here](https://github.com/shailja-thakur/benchmarking-LLM-Verilog/blob/main/VGen_Demo_notebook.ipynb) and a Colab demo [here](https://colab.research.google.com/drive/XYZ?usp=sharing).

Please note that the model inference is tested in Jupyter notebook and is expected to run successfuly with atleast one GPU (RTX4000). Also, this is an initial version of the repo, and will be regularly updated with the resources and tools.


```python
import torch
from transformers import AutoTokenizer, AutoModelForCausalLM
# Prompt
prompt = "//module half adder "

# Load model and tokenizer
model_name = "shailja/CodeGen_2B_Verilog"
tokenizer = AutoTokenizer.from_pretrained("shailja/fine-tuned-codegen-2B-Verilog")
model = AutoModelForCausalLM.from_pretrained("shailja/fine-tuned-codegen-2B-Verilog").to(device)

# Sample
input_ids = tokenizer(prompt, return_tensors="pt").input_ids.to(device)
sample = model.generate(input_ids, max_length=128, temperature=0.5, top_p=0.9)

print(tokenizer.decode(sample[0], truncate_before_pattern=[r"endmodule"]) + "endmodule")
```

## Sampling using fauxpilot

[Fauxpilot](https://github.com/moyix/fauxpilot) is an open-source tool for quering LLMs via [OpenAI API](https://beta.openai.com/docs/api-reference/). The method is preferred over the above model inferencing method for it achieves memory and compute optimization resulting in low latency inferencing capability. A customised version of fauxpilot [here](https://github.com/shailja-thakur/fauxpilot_changes) allows to sample from the fine-tuned LLMs.

```sh
git clone https://github.com/shailja-thakur/fauxpilot_changes.git
# Follow the instructions in the readme, and run the inference as follows:

$ ipython
Python 3.8.10 (default, Mar 15 2022, 12:22:08) 
Type 'copyright', 'credits' or 'license' for more information
IPython 8.2.0 -- An enhanced Interactive Python. Type '?' for help.

In [1]: import openai

In [2]: openai.api_key = 'dummy'

In [3]: openai.api_base = 'http://127.0.0.1:5000/v1'

In [4]: result = openai.Completion.create(engine='codegen', prompt='//module half adder', max_tokens=100, temperature=0.1, n=3,top_p=1.0, stop=["endmodule"])

In [5]: result
Out[5]: 
<OpenAIObject text_completion id=cmpl-6hqu8Rcaq25078IHNJNVooU4xLY6w at 0x7f602c3d2f40> JSON: {
  "choices": [
    {
      "finish_reason": "stop",
      "index": 0,
      "logprobs": null,
      "text": " (input a, b, cin, output sum, cout);\n\tassign sum = a ^ b ^ cin;\n\tassign cout = (a & b) | (a & cin) | (b & cin);\n"
    },
    {
      "finish_reason": "stop",
      "index": 1,
      "logprobs": null,
      "text": " (input a, b, output sum, carry);\n\tassign sum = a ^ b;\n\tassign carry = a & b;\n"
    },
    {
      "finish_reason": "stop",
      "index": 2,
      "logprobs": null,
      "text": " (input a, b, output sum, carry);\n\tassign sum = a ^ b;\n\tassign carry = a & b;\n"
    }
  ],
  "created": 1668569699,
  "id": "cmpl-kIY0lzUWkQsFve2J2w9oBSO7gGYCh",
  "model": "codegen",
  "object": "text_completion",
  "usage": {
    "completion_tokens": 123,
    "prompt_tokens": 5,
    "total_tokens": 128
  }
}
```

## Citation

If you find our work helpful, please cite as
```
@misc{https://doi.org/10.48550/arxiv.2212.11140,
  doi = {10.48550/ARXIV.2212.11140},
  url = {https://arxiv.org/abs/2212.11140},
  author = {Thakur, Shailja and Ahmad, Baleegh and Fan, Zhenxing and Pearce, Hammond and Tan, Benjamin and Karri, Ramesh and Dolan-Gavitt, Brendan and Garg, Siddharth},
  title = {Benchmarking Large Language Models for Automated Verilog RTL Code Generation},
  publisher = {arXiv},
  year = {2022},
  copyright = {arXiv.org perpetual, non-exclusive license}
}

```

## LICENCE

Please note that this repo is under MIT licence

## Contributors
<a href="https://github.com/shailja-thakur"> <img src="https://avatars.githubusercontent.com/u/3057541?v=4" width="50" /></a> 
<a href="https://github.com/baleegh"> <img src="https://avatars.githubusercontent.com/u/36158742?v=4" width="50" /></a>
<!-- <a href="https://github.com/Baigker">  <img src="https://avatars.githubusercontent.com/u/81303490?v=4"  width="50" /></a> -->
