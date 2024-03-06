from langchain.llms.base import LLM
from transformers import AutoTokenizer, AutoModel, AutoConfig
from typing import List,Optional
from langchain_community.utilities.sql_database import SQLDatabase
from langchain_experimental.sql import SQLDatabaseChain
class GLM(LLM):
    max_token: int = 2048
    temperature: float = 0.8
    top_p = 0.9
    tokenizer: object = None
    model: object = None
    history_len: int = 1024
    def __init__(self):
        super().__init__()
    @property
    def _llm_type(self) -> str:
        return "GLM"
    def load_model(self, llm_device="gpu",model_name_or_path=None):
        model_config = AutoConfig.from_pretrained(model_name_or_path, trust_remote_code=True)
        self.tokenizer = AutoTokenizer.from_pretrained(model_name_or_path,trust_remote_code=True)
        self.model = AutoModel.from_pretrained(model_name_or_path, config=model_config, trust_remote_code=True).half().cuda()
    def _call(self,prompt:str,history:List[str] = [],stop: Optional[List[str]] = None):
        response, _ = self.model.chat(
                    self.tokenizer,prompt,
                    history=history[-self.history_len:] if self.history_len > 0 else [],
                    max_length=self.max_token,temperature=self.temperature,
                    top_p=self.top_p)
        return response

import sys
modelpath = "D:/llm/chatglm3_6b_32k"
sys.path.append(modelpath)
llm = GLM()
llm.load_model(model_name_or_path = modelpath)

db=SQLDatabase.from_uri("mysql+pymysql://user_name:password@xxx.xxx.xx.xxx:xxxx/database_name")
db_chain = SQLDatabaseChain(llm=llm, database=db,verbose=True,return_sql=True,use_query_checker=True)
res=db_chain.run("How much taller is ZhangSan than LiSi?")