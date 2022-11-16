# LLMs for Verilog 

*Title*: [Benchmarking Large Language Models for Automated Verilog RTL Code Generation](ARXIV URL)

*Authors*: [Shailja Thakur](https://shailja-thakur.github.io/), [Baleegh Ahmad](), [Zhenxing Fan](), [Hammond Pearce](), [Benjamin Tan](), [Ramesh Karri](), [Brendan Dolan-Gavitt](), and [Siddharth Garg]() 

<!---
<p align="center">
  <img src="assets/two.gif" width="60%">
</p>
-->

## Training and Fine-tuning

The scripts for data pre-processing and fine-tuning the models can be found here:

https://github.com/shailja-thakur/benchmarking-LLM-Verilog/scripts

## Sampling with HuggingFace

The models are available on the [HuggingFace](https://huggingface.co/models?search=verilog) with a Jupyter notebook and a Colab demo [here](https://colab.research.google.com/drive/XYZ?usp=sharing).

Please note that the model inference is tested in Jupyter notebook and is expected to run successfuly with atleast one GPU (RTX4000)


```python
import torch
from transformers import AutoTokenizer, AutoModelForCausalLM
prompt = "//module half adder "
model_name = "shailja/CodeGen_2B_Verilog"
# Load model and tokenizer
tokenizer = AutoTokenizer.from_pretrained("shailja/CodeGen_2B_Verilog")
model = AutoModelForCausalLM.from_pretrained("shailja/CodeGen_2B_Verilog").to(device)
input_ids = tokenizer(prompt, return_tensors="pt").input_ids.to(device)
# Sample
sample = model.generate(input_ids, max_length=128, temperature=0.5, top_p=0.9)
print(tokenizer.decode(sample[0], truncate_before_pattern=[r"endmodule"]) + "endmodule")
```

## Sampling with [Fauxpilot](https://github.com/shailja-thakur/fauxpilot_changes)

Fauxpilot allows for sampling from the models with less compute and memory as opposed to the notebook version.

```sh
# download the model parameters
# codegen-verilog-2B,6B,16B
# wget -P checkpoints https://storage.googleapis.com/sfr-codegen-research/checkpoints/codegen-350M-nl.tar.gz && tar -xvf checkpoints/codegen-350M-nl.tar.gz -C checkpoints/
# wget -P checkpoints https://storage.googleapis.com/sfr-codegen-research/checkpoints/codegen-350M-multi.tar.gz && tar -xvf checkpoints/codegen-350M-multi.tar.gz -C checkpoints/
wget -P checkpoints https://storage.googleapis.com/sfr-codegen-research/checkpoints/codegen-350M-mono.tar.gz && tar -xvf checkpoints/codegen-350M-mono.tar.gz -C checkpoints/
# codegen-2B-nl,multi,mono

git clone https://github.com/shailja-thakur/fauxpilot_changes.git
# Follow the instructions in the readme, and run the inference as follows:

$ ipython
Python 3.8.10 (default, Mar 15 2022, 12:22:08) 
Type 'copyright', 'credits' or 'license' for more information
IPython 8.2.0 -- An enhanced Interactive Python. Type '?' for help.

In [1]: import openai

In [2]: openai.api_key = 'dummy'

In [3]: openai.api_base = 'http://127.0.0.1:5000/v1'

In [4]: result = openai.Completion.create(engine='codegen', prompt='\\module half adder', max_tokens=100, temperature=0.1, n=3,top_p=1.0, stop=["endmodule"])

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



This is our work on benchmarking Large Language Models (LLM) for automatically generating Verilog.
The repository comprises of the following:
1. Pre-processing scripts
2. Fine-tuning scripts
3. Sctipts used in the evaluation pipeline (Design tasks, preparing test-benches, compilation and test scripts, results accumulation, comprehensive report)
4. Inference (Jupyter Notebook/Fauxpilot with fine-tuned model)
5. Scripts for result visualization

The checkpoints for the fine-tuned LLMs for Verilog are available on [ Huggingface ](https://huggingface.co/shailja)

More details coming soo ...


