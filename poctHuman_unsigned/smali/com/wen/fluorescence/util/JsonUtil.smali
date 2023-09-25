.class public Lcom/wen/fluorescence/util/JsonUtil;
.super Ljava/lang/Object;
.source "JsonUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static SampleCoefficientToJson([Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;)Ljava/lang/String;
    .locals 2
    .param p0, "arr"    # [Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;

    .line 78
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 79
    .local v0, "gson":Lcom/google/gson/Gson;
    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "json":Ljava/lang/String;
    return-object v1
.end method

.method public static arrayToJson([D)Ljava/lang/String;
    .locals 2
    .param p0, "arr"    # [D

    .line 24
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 25
    .local v0, "gson":Lcom/google/gson/Gson;
    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 26
    .local v1, "json":Ljava/lang/String;
    return-object v1
.end method

.method public static arrayToJson([I)Ljava/lang/String;
    .locals 2
    .param p0, "arr"    # [I

    .line 30
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 31
    .local v0, "gson":Lcom/google/gson/Gson;
    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 32
    .local v1, "json":Ljava/lang/String;
    return-object v1
.end method

.method public static arrayToJson([Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "arr"    # [Ljava/lang/String;

    .line 36
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 37
    .local v0, "gson":Lcom/google/gson/Gson;
    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 38
    .local v1, "json":Ljava/lang/String;
    return-object v1
.end method

.method public static arrayToJson([[D)Ljava/lang/String;
    .locals 2
    .param p0, "arr"    # [[D

    .line 18
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 19
    .local v0, "gson":Lcom/google/gson/Gson;
    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 20
    .local v1, "json":Ljava/lang/String;
    return-object v1
.end method

.method public static arrayToJson([[Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "arr"    # [[Ljava/lang/String;

    .line 12
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 13
    .local v0, "gson":Lcom/google/gson/Gson;
    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 14
    .local v1, "json":Ljava/lang/String;
    return-object v1
.end method

.method public static jsonToDoubleArray(Ljava/lang/String;)[D
    .locals 2
    .param p0, "jsonStr"    # Ljava/lang/String;

    .line 60
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 61
    .local v0, "gson":Lcom/google/gson/Gson;
    new-instance v1, Lcom/wen/fluorescence/util/JsonUtil$4;

    invoke-direct {v1}, Lcom/wen/fluorescence/util/JsonUtil$4;-><init>()V

    invoke-virtual {v1}, Lcom/wen/fluorescence/util/JsonUtil$4;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    .line 62
    .local v1, "str":[D
    return-object v1
.end method

.method public static jsonToDoubleTwoArray(Ljava/lang/String;)[[D
    .locals 2
    .param p0, "jsonStr"    # Ljava/lang/String;

    .line 48
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 49
    .local v0, "gson":Lcom/google/gson/Gson;
    new-instance v1, Lcom/wen/fluorescence/util/JsonUtil$2;

    invoke-direct {v1}, Lcom/wen/fluorescence/util/JsonUtil$2;-><init>()V

    invoke-virtual {v1}, Lcom/wen/fluorescence/util/JsonUtil$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    .line 50
    .local v1, "str":[[D
    return-object v1
.end method

.method public static jsonToIntArray(Ljava/lang/String;)[I
    .locals 2
    .param p0, "jsonStr"    # Ljava/lang/String;

    .line 66
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 67
    .local v0, "gson":Lcom/google/gson/Gson;
    new-instance v1, Lcom/wen/fluorescence/util/JsonUtil$5;

    invoke-direct {v1}, Lcom/wen/fluorescence/util/JsonUtil$5;-><init>()V

    invoke-virtual {v1}, Lcom/wen/fluorescence/util/JsonUtil$5;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 68
    .local v1, "str":[I
    return-object v1
.end method

.method public static jsonToSampleCoefficient(Ljava/lang/String;)[Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;
    .locals 2
    .param p0, "jsonStr"    # Ljava/lang/String;

    .line 72
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 73
    .local v0, "gson":Lcom/google/gson/Gson;
    new-instance v1, Lcom/wen/fluorescence/util/JsonUtil$6;

    invoke-direct {v1}, Lcom/wen/fluorescence/util/JsonUtil$6;-><init>()V

    invoke-virtual {v1}, Lcom/wen/fluorescence/util/JsonUtil$6;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;

    .line 74
    .local v1, "str":[Lcom/wen/fluorescence/bean/IDChipInfoExN$SampleCoefficient;
    return-object v1
.end method

.method public static jsonToStrArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p0, "jsonStr"    # Ljava/lang/String;

    .line 54
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 55
    .local v0, "gson":Lcom/google/gson/Gson;
    new-instance v1, Lcom/wen/fluorescence/util/JsonUtil$3;

    invoke-direct {v1}, Lcom/wen/fluorescence/util/JsonUtil$3;-><init>()V

    invoke-virtual {v1}, Lcom/wen/fluorescence/util/JsonUtil$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 56
    .local v1, "str":[Ljava/lang/String;
    return-object v1
.end method

.method public static jsonToStrTwoArray(Ljava/lang/String;)[[Ljava/lang/String;
    .locals 2
    .param p0, "jsonStr"    # Ljava/lang/String;

    .line 42
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 43
    .local v0, "gson":Lcom/google/gson/Gson;
    new-instance v1, Lcom/wen/fluorescence/util/JsonUtil$1;

    invoke-direct {v1}, Lcom/wen/fluorescence/util/JsonUtil$1;-><init>()V

    invoke-virtual {v1}, Lcom/wen/fluorescence/util/JsonUtil$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Ljava/lang/String;

    .line 44
    .local v1, "str":[[Ljava/lang/String;
    return-object v1
.end method
