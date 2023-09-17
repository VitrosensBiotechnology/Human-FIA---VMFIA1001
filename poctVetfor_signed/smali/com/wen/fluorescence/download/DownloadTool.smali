.class public Lcom/wen/fluorescence/download/DownloadTool;
.super Ljava/lang/Object;
.source "DownloadTool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wen/fluorescence/download/DownloadTool$DownLoadCallBack;
    }
.end annotation


# static fields
.field public static GuestTypeName:[Ljava/lang/String;

.field public static SoftTypeName:[Ljava/lang/String;

.field public static localAPK:Ljava/lang/String;

.field public static localConfig:Ljava/lang/String;

.field private static server_url:Ljava/lang/String;

.field public static uriAPK:Ljava/lang/String;

.field public static uriConfig:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 28
    const-string v0, "http://www.tronho.com"

    sput-object v0, Lcom/wen/fluorescence/download/DownloadTool;->server_url:Ljava/lang/String;

    .line 31
    const-string v0, "/sdcard/Download/Config.xml"

    sput-object v0, Lcom/wen/fluorescence/download/DownloadTool;->localConfig:Ljava/lang/String;

    .line 34
    const-string v0, "/sdcard/Download/"

    sput-object v0, Lcom/wen/fluorescence/download/DownloadTool;->localAPK:Ljava/lang/String;

    .line 37
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, ""

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Hair"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "Cow"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sput-object v1, Lcom/wen/fluorescence/download/DownloadTool;->SoftTypeName:[Ljava/lang/String;

    .line 38
    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v3

    const-string v2, "Bioeasy"

    aput-object v2, v1, v4

    const-string v2, "PCL"

    aput-object v2, v1, v5

    const-string v2, "VChek"

    aput-object v2, v1, v0

    const-string v0, "Dxia"

    const/4 v2, 0x4

    aput-object v0, v1, v2

    const-string v0, "Public"

    const/4 v2, 0x5

    aput-object v0, v1, v2

    const-string v0, "PublicCOV"

    const/4 v2, 0x6

    aput-object v0, v1, v2

    const-string v0, "Easy-11_Scan"

    const/4 v2, 0x7

    aput-object v0, v1, v2

    const-string v0, "Easy-11"

    const/16 v2, 0x8

    aput-object v0, v1, v2

    sput-object v1, Lcom/wen/fluorescence/download/DownloadTool;->GuestTypeName:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ConfirmFile(Ljava/lang/String;)V
    .locals 3
    .param p0, "filePath"    # Ljava/lang/String;

    .line 95
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 96
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 98
    .local v1, "parent":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 99
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .end local v0    # "f":Ljava/io/File;
    .end local v1    # "parent":Ljava/io/File;
    :cond_1
    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 103
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static DownloadFile(Ljava/lang/String;Ljava/lang/String;Lcom/wen/fluorescence/download/DownloadTool$DownLoadCallBack;Landroid/os/Handler;)V
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "callBack"    # Lcom/wen/fluorescence/download/DownloadTool$DownLoadCallBack;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 52
    invoke-static {p1}, Lcom/wen/fluorescence/download/DownloadTool;->ConfirmFile(Ljava/lang/String;)V

    .line 53
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/wen/fluorescence/download/DownloadTool$1;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/wen/fluorescence/download/DownloadTool$1;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Lcom/wen/fluorescence/download/DownloadTool$DownLoadCallBack;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 88
    return-void
.end method

.method public static initDownloadTool()V
    .locals 3

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/wen/fluorescence/download/DownloadTool;->server_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/update/CHF200/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/wen/fluorescence/download/DownloadTool;->SoftTypeName:[Ljava/lang/String;

    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wen/fluorescence/util/Global;->getSoftType()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/wen/fluorescence/download/DownloadTool;->GuestTypeName:[Ljava/lang/String;

    .line 43
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wen/fluorescence/util/Global;->getGuestType()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "fullPath":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/Config.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/wen/fluorescence/download/DownloadTool;->uriConfig:Ljava/lang/String;

    .line 45
    sput-object v0, Lcom/wen/fluorescence/download/DownloadTool;->uriAPK:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public static parseConfigXml(Ljava/lang/String;)Lcom/wen/fluorescence/download/DownConfig;
    .locals 12
    .param p0, "fileName"    # Ljava/lang/String;

    .line 107
    new-instance v0, Lcom/wen/fluorescence/download/DownConfig;

    invoke-direct {v0}, Lcom/wen/fluorescence/download/DownConfig;-><init>()V

    .line 109
    .local v0, "config":Lcom/wen/fluorescence/download/DownConfig;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 110
    .local v1, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v2, 0x0

    .line 113
    .local v2, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    .line 114
    .local v3, "builder":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    .line 116
    invoke-virtual {v3, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v4

    .line 118
    .local v4, "document":Lorg/w3c/dom/Document;
    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v5

    .line 133
    .local v5, "rootElement":Lorg/w3c/dom/Element;
    invoke-interface {v5}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 134
    .local v6, "childNodeList":Lorg/w3c/dom/NodeList;
    const/4 v7, 0x0

    .line 134
    .local v7, "i":I
    :goto_0
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-ge v7, v8, :cond_4

    .line 135
    invoke-interface {v6, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 136
    .local v8, "node":Lorg/w3c/dom/Node;
    const-string v9, "node"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Node_NodeName:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ",Node_LocalValue:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const-string v9, "VersionName"

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 138
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/wen/fluorescence/download/DownConfig;->setVersionName(Ljava/lang/String;)V

    goto :goto_1

    .line 139
    :cond_0
    const-string v9, "VersionCode"

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 140
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v0, v9}, Lcom/wen/fluorescence/download/DownConfig;->setVersionCode(I)V

    goto :goto_1

    .line 141
    :cond_1
    const-string v9, "FileName"

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 142
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/wen/fluorescence/download/DownConfig;->setFileName(Ljava/lang/String;)V

    goto :goto_1

    .line 143
    :cond_2
    const-string v9, "DateTime"

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 144
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/wen/fluorescence/download/DownConfig;->setDateTime(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    .end local v8    # "node":Lorg/w3c/dom/Node;
    :cond_3
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 152
    .end local v3    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v4    # "document":Lorg/w3c/dom/Document;
    .end local v5    # "rootElement":Lorg/w3c/dom/Element;
    .end local v6    # "childNodeList":Lorg/w3c/dom/NodeList;
    .end local v7    # "i":I
    :cond_4
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 155
    :goto_2
    goto :goto_3

    .line 153
    :catch_0
    move-exception v3

    .line 154
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 156
    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_3

    .line 151
    :catchall_0
    move-exception v3

    goto :goto_4

    .line 148
    :catch_1
    move-exception v3

    .line 149
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v3}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 152
    .end local v3    # "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 157
    :goto_3
    return-object v0

    .line 151
    :goto_4
    nop

    .line 152
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 155
    goto :goto_5

    .line 153
    :catch_2
    move-exception v4

    .line 154
    .local v4, "e":Ljava/lang/Exception;
    invoke-static {v4}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 155
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_5
    throw v3
.end method
