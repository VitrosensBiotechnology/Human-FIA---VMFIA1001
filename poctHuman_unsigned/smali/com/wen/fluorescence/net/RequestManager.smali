.class public Lcom/wen/fluorescence/net/RequestManager;
.super Ljava/lang/Object;
.source "RequestManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wen/fluorescence/net/RequestManager$LoggingInterceptor;
    }
.end annotation


# static fields
.field private static final CODE:Ljava/lang/String; = "code"

.field private static final DATA:Ljava/lang/String; = "data"

.field public static final JSON:Lokhttp3/MediaType;

.field private static final MESSAGE:Ljava/lang/String; = "message"

.field private static final MESSAGE1:Ljava/lang/String; = "msg"

.field private static client:Lokhttp3/OkHttpClient;

.field private static handler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 52
    const-string v0, "application/json; charset=utf-8"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lcom/wen/fluorescence/net/RequestManager;->JSON:Lokhttp3/MediaType;

    .line 55
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    new-instance v1, Lcom/wen/fluorescence/net/RequestManager$LoggingInterceptor;

    invoke-direct {v1}, Lcom/wen/fluorescence/net/RequestManager$LoggingInterceptor;-><init>()V

    .line 56
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 57
    const-wide/16 v2, 0xa

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 58
    const-wide/16 v2, 0xf

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    sput-object v0, Lcom/wen/fluorescence/net/RequestManager;->client:Lokhttp3/OkHttpClient;

    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/wen/fluorescence/net/RequestManager;->handler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static SendToCloudPlatFormDXia(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;Lcom/wen/fluorescence/net/CallBack;)V
    .locals 8
    .param p0, "tag"    # Ljava/lang/Object;
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "callBack"    # Lcom/wen/fluorescence/net/CallBack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/wen/fluorescence/database/TestResult;",
            ">;",
            "Lcom/wen/fluorescence/net/CallBack;",
            ")V"
        }
    .end annotation

    .line 239
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/database/TestResult;>;"
    invoke-static {}, Lcom/wen/fluorescence/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/net/NetworkUtils;->isConnectedByState(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    const-string v0, "network not contented!!"

    invoke-interface {p3, v0}, Lcom/wen/fluorescence/net/CallBack;->onFailure(Ljava/lang/String;)V

    .line 241
    return-void

    .line 243
    :cond_0
    invoke-static {}, Lcom/wen/fluorescence/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/util/SharedPreferencesUtils;

    move-result-object v0

    const-string v1, "DevicedID"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, "device_id":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 245
    invoke-static {}, Lcom/wen/fluorescence/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/wen/fluorescence/util/PublicFuction;->getMacDefault(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 247
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 248
    .local v1, "jsonObjectTotal":Lorg/json/JSONObject;
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 250
    .local v2, "jsonArray":Lorg/json/JSONArray;
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/wen/fluorescence/database/TestResult;

    .line 251
    .local v4, "testResult":Lcom/wen/fluorescence/database/TestResult;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 252
    .local v5, "jsonObject":Lorg/json/JSONObject;
    const-string v6, "sample"

    invoke-virtual {v4}, Lcom/wen/fluorescence/database/TestResult;->getSimpleType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 253
    const-string v6, "project"

    invoke-virtual {v4}, Lcom/wen/fluorescence/database/TestResult;->getItemTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 254
    const-string v6, "result"

    invoke-virtual {v4}, Lcom/wen/fluorescence/database/TestResult;->getResult()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 255
    const-string v6, "test_date"

    invoke-virtual {v4}, Lcom/wen/fluorescence/database/TestResult;->getTestTime()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 256
    const-string v6, "device_id"

    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 257
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 258
    .end local v4    # "testResult":Lcom/wen/fluorescence/database/TestResult;
    .end local v5    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 259
    :cond_2
    const-string v3, "detect_array"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    goto :goto_1

    .line 260
    :catch_0
    move-exception v3

    .line 261
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 264
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    new-instance v3, Lokhttp3/FormBody$Builder;

    invoke-direct {v3}, Lokhttp3/FormBody$Builder;-><init>()V

    const-string v4, "detect_array"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object v3

    .line 265
    .local v3, "formBody":Lokhttp3/RequestBody;
    const-string v4, "Bo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RequestBody:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    new-instance v4, Lokhttp3/Request$Builder;

    invoke-direct {v4}, Lokhttp3/Request$Builder;-><init>()V

    .line 268
    invoke-virtual {v4, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v4

    const-string v5, "token"

    const-string v6, "17fc81f76f41927588f674697dd33c1f01fd6800"

    .line 269
    invoke-virtual {v4, v5, v6}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v4

    .line 270
    invoke-virtual {v4, v3}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v4

    .line 271
    invoke-virtual {v4, p0}, Lokhttp3/Request$Builder;->tag(Ljava/lang/Object;)Lokhttp3/Request$Builder;

    move-result-object v4

    .line 272
    invoke-virtual {v4}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v4

    .line 275
    .local v4, "request":Lokhttp3/Request;
    sget-object v5, Lcom/wen/fluorescence/net/RequestManager;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v5, v4}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v5

    new-instance v6, Lcom/wen/fluorescence/net/RequestManager$4;

    invoke-direct {v6, p3}, Lcom/wen/fluorescence/net/RequestManager$4;-><init>(Lcom/wen/fluorescence/net/CallBack;)V

    invoke-interface {v5, v6}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 300
    return-void
.end method

.method public static SendToCloudPlatFormEasy11(Ljava/lang/Object;Ljava/lang/String;Lcom/wen/fluorescence/database/TestResult;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/wen/fluorescence/net/CallBack;)V
    .locals 17
    .param p0, "tag"    # Ljava/lang/Object;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "testResult"    # Lcom/wen/fluorescence/database/TestResult;
    .param p3, "appId"    # Ljava/lang/String;
    .param p4, "longitude"    # Ljava/lang/String;
    .param p5, "latitude"    # Ljava/lang/String;
    .param p6, "callBack"    # Lcom/wen/fluorescence/net/CallBack;

    .line 311
    move-object/from16 v1, p6

    invoke-static {}, Lcom/wen/fluorescence/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/wen/fluorescence/util/NetUtil;->isNetworkConnect(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 313
    const-string v2, "\u7f51\u7edc\u672a\u8fde\u63a5"

    invoke-interface {v1, v2}, Lcom/wen/fluorescence/net/CallBack;->onFailure(Ljava/lang/String;)V

    .line 314
    return-void

    .line 317
    :cond_0
    const-string v2, ""

    .line 318
    .local v2, "resultValue":Ljava/lang/String;
    const-string v3, ""

    .line 319
    .local v3, "result":Ljava/lang/String;
    const-string v4, ""

    .line 320
    .local v4, "testTime":Ljava/lang/String;
    const-string v5, ""

    .line 321
    .local v5, "checker":Ljava/lang/String;
    if-nez p2, :cond_1

    .line 322
    const-string v6, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v6}, Lcom/wen/fluorescence/util/DateUtils;->getSysemDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 323
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v6

    invoke-virtual {v6}, Lcom/wen/fluorescence/util/Global;->getUser()Ljava/lang/String;

    move-result-object v5

    .line 324
    const-string v3, "\u9634\u6027"

    .line 333
    move-object/from16 v6, p3

    goto :goto_0

    .line 326
    :cond_1
    invoke-static/range {p2 .. p2}, Lcom/wen/fluorescence/util/PublicFuction;->getShowResultFor2(Lcom/wen/fluorescence/database/TestResult;)Lcom/wen/fluorescence/bean/TemResultBean;

    move-result-object v6

    .line 327
    .local v6, "temResultBean":Lcom/wen/fluorescence/bean/TemResultBean;
    invoke-virtual {v6}, Lcom/wen/fluorescence/bean/TemResultBean;->getResult()Ljava/lang/String;

    move-result-object v2

    .line 328
    invoke-virtual {v6}, Lcom/wen/fluorescence/bean/TemResultBean;->getVerdict()Ljava/lang/String;

    move-result-object v3

    .line 329
    invoke-virtual/range {p2 .. p2}, Lcom/wen/fluorescence/database/TestResult;->getUser()Ljava/lang/String;

    move-result-object v5

    .line 330
    invoke-virtual/range {p2 .. p2}, Lcom/wen/fluorescence/database/TestResult;->getTestTime()Ljava/lang/String;

    move-result-object v4

    .line 331
    invoke-virtual/range {p2 .. p2}, Lcom/wen/fluorescence/database/TestResult;->getAppId()Ljava/lang/String;

    move-result-object v6

    .line 333
    .end local p3    # "appId":Ljava/lang/String;
    .local v6, "appId":Ljava/lang/String;
    :goto_0
    move-object v7, v6

    .line 335
    .local v7, "AppId":Ljava/lang/String;
    invoke-static {}, Lcom/wen/fluorescence/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/wen/fluorescence/util/PublicFuction;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 336
    .local v8, "device_id":Ljava/lang/String;
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 338
    .local v9, "jsonObjectTotal":Lorg/json/JSONObject;
    :try_start_0
    const-string v10, "sn"

    invoke-virtual {v9, v10, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 339
    const-string v10, "checkDate"

    invoke-virtual {v9, v10, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 340
    const-string v10, "checkValue"

    invoke-virtual {v9, v10, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 341
    const-string v10, "checkResult"

    invoke-virtual {v9, v10, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 342
    const-string v10, "checker"

    invoke-virtual {v9, v10, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 343
    const-string v10, "longitude"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v11, p4

    :try_start_1
    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 344
    const-string v10, "latitude"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v12, p5

    :try_start_2
    invoke-virtual {v9, v10, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 345
    const-string v10, "deviceSn"

    invoke-virtual {v9, v10, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 346
    const-string v10, "sign"

    const-string v13, "1234567890hjlkew"

    invoke-virtual {v9, v10, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 347
    const-string v10, "requestTime"

    const-string v13, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v13}, Lcom/wen/fluorescence/util/DateUtils;->getSysemDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v10, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 349
    goto :goto_2

    .line 348
    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    move-object/from16 v11, p4

    :goto_1
    move-object/from16 v12, p5

    .line 350
    :goto_2
    sget-object v10, Lcom/wen/fluorescence/net/RequestManager;->JSON:Lokhttp3/MediaType;

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v10

    .line 353
    .local v10, "formBody":Lokhttp3/RequestBody;
    new-instance v13, Lokhttp3/Request$Builder;

    invoke-direct {v13}, Lokhttp3/Request$Builder;-><init>()V

    .line 354
    move-object/from16 v14, p1

    invoke-virtual {v13, v14}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v13

    .line 355
    invoke-virtual {v13, v10}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v13

    .line 356
    move-object v15, v2

    move-object/from16 v2, p0

    invoke-virtual {v13, v2}, Lokhttp3/Request$Builder;->tag(Ljava/lang/Object;)Lokhttp3/Request$Builder;

    move-result-object v13

    .line 357
    .end local v2    # "resultValue":Ljava/lang/String;
    .local v15, "resultValue":Ljava/lang/String;
    invoke-virtual {v13}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v13

    .line 360
    .local v13, "request":Lokhttp3/Request;
    sget-object v2, Lcom/wen/fluorescence/net/RequestManager;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v2, v13}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v2

    move-object/from16 v16, v3

    new-instance v3, Lcom/wen/fluorescence/net/RequestManager$5;

    .line 360
    .end local v3    # "result":Ljava/lang/String;
    .local v16, "result":Ljava/lang/String;
    invoke-direct {v3, v1, v7}, Lcom/wen/fluorescence/net/RequestManager$5;-><init>(Lcom/wen/fluorescence/net/CallBack;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 385
    return-void
.end method

.method static synthetic access$000()Landroid/os/Handler;
    .locals 1

    .line 45
    sget-object v0, Lcom/wen/fluorescence/net/RequestManager;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;Lcom/wen/fluorescence/net/CallBack;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Lcom/wen/fluorescence/net/CallBack;

    .line 45
    invoke-static {p0, p1}, Lcom/wen/fluorescence/net/RequestManager;->handleResponseGet(Ljava/lang/String;Lcom/wen/fluorescence/net/CallBack;)V

    return-void
.end method

.method static synthetic access$200(Ljava/lang/String;Lcom/wen/fluorescence/net/CallBack;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Lcom/wen/fluorescence/net/CallBack;

    .line 45
    invoke-static {p0, p1}, Lcom/wen/fluorescence/net/RequestManager;->handleResponse(Ljava/lang/String;Lcom/wen/fluorescence/net/CallBack;)V

    return-void
.end method

.method static synthetic access$300(Ljava/lang/String;Ljava/lang/String;Lcom/wen/fluorescence/net/CallBack;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/wen/fluorescence/net/CallBack;

    .line 45
    invoke-static {p0, p1, p2}, Lcom/wen/fluorescence/net/RequestManager;->handleResponseEasy11(Ljava/lang/String;Ljava/lang/String;Lcom/wen/fluorescence/net/CallBack;)V

    return-void
.end method

.method public static cancelRequest(Ljava/lang/Object;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/Object;

    .line 471
    sget-object v0, Lcom/wen/fluorescence/net/RequestManager;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Dispatcher;->queuedCalls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/Call;

    .line 472
    .local v1, "call":Lokhttp3/Call;
    invoke-interface {v1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request;->tag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 473
    invoke-interface {v1}, Lokhttp3/Call;->cancel()V

    .line 475
    .end local v1    # "call":Lokhttp3/Call;
    :cond_0
    goto :goto_0

    .line 476
    :cond_1
    sget-object v0, Lcom/wen/fluorescence/net/RequestManager;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Dispatcher;->runningCalls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/Call;

    .line 477
    .restart local v1    # "call":Lokhttp3/Call;
    invoke-interface {v1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request;->tag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 478
    invoke-interface {v1}, Lokhttp3/Call;->cancel()V

    .line 480
    .end local v1    # "call":Lokhttp3/Call;
    :cond_2
    goto :goto_1

    .line 481
    :cond_3
    return-void
.end method

.method public static downLoadBinFromCloudPlatFormDXia(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/wen/fluorescence/net/CallBack;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/Object;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "barCode"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "callBack"    # Lcom/wen/fluorescence/net/CallBack;

    .line 174
    invoke-static {}, Lcom/wen/fluorescence/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/net/NetworkUtils;->isConnectedByState(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    const-string v0, "network not contented!!"

    invoke-interface {p4, v0}, Lcom/wen/fluorescence/net/CallBack;->onFailure(Ljava/lang/String;)V

    .line 176
    return-void

    .line 179
    :cond_0
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?barCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 180
    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 181
    invoke-virtual {v0, p0}, Lokhttp3/Request$Builder;->tag(Ljava/lang/Object;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "token"

    const-string v2, "17fc81f76f41927588f674697dd33c1f01fd6800"

    .line 182
    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 183
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 186
    .local v0, "request":Lokhttp3/Request;
    sget-object v1, Lcom/wen/fluorescence/net/RequestManager;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v1

    new-instance v2, Lcom/wen/fluorescence/net/RequestManager$3;

    invoke-direct {v2, p4, p3}, Lcom/wen/fluorescence/net/RequestManager$3;-><init>(Lcom/wen/fluorescence/net/CallBack;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 226
    return-void
.end method

.method private static get(Ljava/lang/Object;Ljava/lang/String;Lcom/wen/fluorescence/net/CallBack;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/Object;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "callBack"    # Lcom/wen/fluorescence/net/CallBack;

    .line 65
    invoke-static {}, Lcom/wen/fluorescence/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/net/NetworkUtils;->isConnectedByState(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    const-string v0, "network not contented!!"

    invoke-interface {p2, v0}, Lcom/wen/fluorescence/net/CallBack;->onFailure(Ljava/lang/String;)V

    .line 67
    return-void

    .line 70
    :cond_0
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 71
    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 72
    invoke-virtual {v0, p0}, Lokhttp3/Request$Builder;->tag(Ljava/lang/Object;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "token"

    const-string v2, "17fc81f76f41927588f674697dd33c1f01fd6800"

    .line 73
    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 77
    .local v0, "request":Lokhttp3/Request;
    sget-object v1, Lcom/wen/fluorescence/net/RequestManager;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v1

    new-instance v2, Lcom/wen/fluorescence/net/RequestManager$1;

    invoke-direct {v2, p2}, Lcom/wen/fluorescence/net/RequestManager$1;-><init>(Lcom/wen/fluorescence/net/CallBack;)V

    invoke-interface {v1, v2}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 105
    return-void
.end method

.method private static handleResponse(Ljava/lang/String;Lcom/wen/fluorescence/net/CallBack;)V
    .locals 4
    .param p0, "json"    # Ljava/lang/String;
    .param p1, "callBack"    # Lcom/wen/fluorescence/net/CallBack;

    .line 391
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 392
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string v1, "TAG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleResponse:Code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "code"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const-string v1, "TAG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleResponse:Message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "message"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    const-string v1, "code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 396
    const-string v1, "code key not exists!!"

    invoke-interface {p1, v1}, Lcom/wen/fluorescence/net/CallBack;->onFailure(Ljava/lang/String;)V

    .line 397
    return-void

    .line 399
    :cond_0
    const-string v1, "message"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 400
    const-string v1, "message key not exists!!"

    invoke-interface {p1, v1}, Lcom/wen/fluorescence/net/CallBack;->onFailure(Ljava/lang/String;)V

    .line 401
    return-void

    .line 403
    :cond_1
    const-string v1, "code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_2

    .line 404
    const-string v1, "message"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/wen/fluorescence/net/CallBack;->onFailure(Ljava/lang/String;)V

    .line 405
    return-void

    .line 408
    :cond_2
    const-string v1, "message"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/wen/fluorescence/net/CallBack;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 409
    :catch_0
    move-exception v0

    .line 410
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/wen/fluorescence/net/CallBack;->onFailure(Ljava/lang/String;)V

    .line 412
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method private static handleResponseEasy11(Ljava/lang/String;Ljava/lang/String;Lcom/wen/fluorescence/net/CallBack;)V
    .locals 3
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "json"    # Ljava/lang/String;
    .param p2, "callBack"    # Lcom/wen/fluorescence/net/CallBack;

    .line 417
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 421
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string v1, "code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 422
    const-string v1, "code key not exists!!"

    invoke-interface {p2, v1}, Lcom/wen/fluorescence/net/CallBack;->onFailure(Ljava/lang/String;)V

    .line 423
    return-void

    .line 425
    :cond_0
    const-string v1, "msg"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 426
    const-string v1, "message key not exists!!"

    invoke-interface {p2, v1}, Lcom/wen/fluorescence/net/CallBack;->onFailure(Ljava/lang/String;)V

    .line 427
    return-void

    .line 429
    :cond_1
    const-string v1, "code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_2

    .line 430
    const-string v1, "msg"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/wen/fluorescence/net/CallBack;->onFailure(Ljava/lang/String;)V

    .line 431
    return-void

    .line 434
    :cond_2
    invoke-interface {p2, p0}, Lcom/wen/fluorescence/net/CallBack;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 435
    :catch_0
    move-exception v0

    .line 436
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/wen/fluorescence/net/CallBack;->onFailure(Ljava/lang/String;)V

    .line 438
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method private static handleResponseGet(Ljava/lang/String;Lcom/wen/fluorescence/net/CallBack;)V
    .locals 4
    .param p0, "json"    # Ljava/lang/String;
    .param p1, "callBack"    # Lcom/wen/fluorescence/net/CallBack;

    .line 443
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 445
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string v1, "code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 446
    const-string v1, "code key not exists!!"

    invoke-interface {p1, v1}, Lcom/wen/fluorescence/net/CallBack;->onFailure(Ljava/lang/String;)V

    .line 447
    return-void

    .line 449
    :cond_0
    const-string v1, "message"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 450
    const-string v1, "message key not exists!!"

    invoke-interface {p1, v1}, Lcom/wen/fluorescence/net/CallBack;->onFailure(Ljava/lang/String;)V

    .line 451
    return-void

    .line 453
    :cond_1
    const-string v1, "code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_2

    .line 454
    const-string v1, "message"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/wen/fluorescence/net/CallBack;->onFailure(Ljava/lang/String;)V

    .line 455
    return-void

    .line 458
    :cond_2
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-string v2, "data"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/wen/fluorescence/net/ResponseResultBean;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/wen/fluorescence/net/CallBack;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 461
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 459
    :catch_0
    move-exception v0

    .line 460
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/wen/fluorescence/net/CallBack;->onFailure(Ljava/lang/String;)V

    .line 462
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method private static post(Ljava/lang/Object;Ljava/lang/String;Lcom/wen/fluorescence/database/TestResult;Lcom/wen/fluorescence/net/CallBack;)V
    .locals 5
    .param p0, "tag"    # Ljava/lang/Object;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "testResult"    # Lcom/wen/fluorescence/database/TestResult;
    .param p3, "callBack"    # Lcom/wen/fluorescence/net/CallBack;

    .line 109
    invoke-static {}, Lcom/wen/fluorescence/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/net/NetworkUtils;->isConnectedByState(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    const-string v0, "network not connected!!"

    invoke-interface {p3, v0}, Lcom/wen/fluorescence/net/CallBack;->onFailure(Ljava/lang/String;)V

    .line 111
    return-void

    .line 113
    :cond_0
    invoke-static {}, Lcom/wen/fluorescence/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/util/SharedPreferencesUtils;

    move-result-object v0

    const-string v1, "DevicedID"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "device_id":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 115
    invoke-static {}, Lcom/wen/fluorescence/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/wen/fluorescence/util/PublicFuction;->getMacDefault(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 118
    :cond_1
    new-instance v1, Lokhttp3/FormBody$Builder;

    invoke-direct {v1}, Lokhttp3/FormBody$Builder;-><init>()V

    const-string v2, "sample"

    .line 119
    invoke-virtual {p2}, Lcom/wen/fluorescence/database/TestResult;->getSimpleType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v1

    const-string v2, "project"

    .line 120
    invoke-virtual {p2}, Lcom/wen/fluorescence/database/TestResult;->getItemTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v1

    const-string v2, "result"

    .line 121
    invoke-virtual {p2}, Lcom/wen/fluorescence/database/TestResult;->getResult()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v1

    const-string v2, "test_date"

    .line 122
    invoke-virtual {p2}, Lcom/wen/fluorescence/database/TestResult;->getTestTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v1

    const-string v2, "device_id"

    .line 123
    invoke-virtual {v1, v2, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v1

    .line 124
    invoke-virtual {v1}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object v1

    .line 127
    .local v1, "formBody":Lokhttp3/FormBody;
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    .line 128
    invoke-virtual {v2, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    const-string v3, "token"

    const-string v4, "17fc81f76f41927588f674697dd33c1f01fd6800"

    .line 129
    invoke-virtual {v2, v3, v4}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 130
    invoke-virtual {v2, v1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 131
    invoke-virtual {v2, p0}, Lokhttp3/Request$Builder;->tag(Ljava/lang/Object;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 132
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v2

    .line 135
    .local v2, "request":Lokhttp3/Request;
    sget-object v3, Lcom/wen/fluorescence/net/RequestManager;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v3, v2}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v3

    new-instance v4, Lcom/wen/fluorescence/net/RequestManager$2;

    invoke-direct {v4, p3}, Lcom/wen/fluorescence/net/RequestManager$2;-><init>(Lcom/wen/fluorescence/net/CallBack;)V

    invoke-interface {v3, v4}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 160
    return-void
.end method
