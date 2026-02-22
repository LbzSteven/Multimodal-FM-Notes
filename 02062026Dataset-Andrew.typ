= 最关心的是clinical data的那个folder（我们的concerning）
= person.csv 文件（索引以及理解）
    - 每个病人都有person_id,这些id 连接到condition_occurance.csv的medical conditions （这是一个标准的table，具体解释如下）
    - 这里面所有概念的解释。 https://ohdsi.github.io/CommonDataModel/cdm53.html 
    - 然后有个condition_concept_id 是对应着一个condition，包括这condition以及汇报方式之类的。
        - 查找的lookup table在这里。https://athena.ohdsi.org/search-terms/start
    - concept也是类似的lookup，是某个concept的概念
    - visit_occurance_id 则是什么时候看doctor的记录
    - measurement_id 一样的。measurement_concept_id
= Modality https://docs.aireadi.org/docs/3/dataset/overall-description
    - ECG数据 wfdb format https://wfdb.io/ （andrew也不是很熟悉）
    - Environmental 数据，是个csv。同样的personal id也可以cross reference。许多的structrue数据
    - Image (rentinal)数据 .dcm format 不同的具体的image数据，同样的format。photography(可以 convert to np Array)
    - TS data 各种数据，json format （比较messy）
        - heart beat
        - CGM continous_gluccose_monitoring
        - And else
= 我提问：有无标准库、预处理？
    - 回答：无，只有data format，医学的处理似乎只到提供data format这一步骤，之后几乎完全是task specific。

= 数据集通过消息

#raw("Hello Song Wang,

Your dataset from AI-READI is ready for download and has been stored in your Azure Storage Container. You can find details to access your dataset by logging in with the following link:

https://nam02.safelinks.protection.outlook.com/?url=https%3A%2F%2Ffairhub.io%2Fdatasets%2F3%2Faccess%2Frequest%2F39b9b41e-0d23-4a54-af3f-e246f48ca61b&data=05%7C02%7Csong.wang%40ucf.edu%7C508e9228c6084ce7795908de68548a9f%7Cbb932f15ef3842ba91fcf3c59d5dd1f1%7C0%7C1%7C639062909497037640%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C60000%7C%7C%7C&sdata=Msj5FuxpikkpJHk1jWuUKM1SvP78r0Y3eSMbn%2Bx5CfI%3D&reserved=0

Please login with the same credentials you used when you registered.

If you encounter any difficulty, please email aireadi-dac@ohsu.edu for assistance.")