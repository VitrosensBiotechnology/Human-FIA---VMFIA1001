.class public Lca/uhn/hl7v2/protocol/impl/ApplicationLoader;
.super Ljava/lang/Object;
.source "ApplicationLoader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadApplications(Lca/uhn/hl7v2/protocol/ApplicationRouter;Ljava/net/URL;)V
    .locals 13
    .param p0, "theRouter"    # Lca/uhn/hl7v2/protocol/ApplicationRouter;
    .param p1, "theSource"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lca/uhn/hl7v2/HL7Exception;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 77
    if-nez p1, :cond_0

    .line 78
    new-instance v0, Lca/uhn/hl7v2/HL7Exception;

    const-string v1, "Can\'t load application bindings: the given URL is null"

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 83
    .local v0, "in":Ljava/io/BufferedReader;
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 83
    .local v2, "line":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 125
    return-void

    .line 83
    :cond_2
    nop

    .line 85
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v3, "\t"

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 88
    .local v1, "tok":Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 90
    :try_start_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 91
    .local v3, "type":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 92
    .local v4, "event":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 93
    .local v5, "procId":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    .line 94
    .local v6, "verId":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .local v7, "className":Ljava/lang/String;
    nop

    .line 97
    nop

    .line 107
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 108
    .local v8, "appClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v8}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v9

    .line 110
    .local v9, "appObject":Ljava/lang/Object;
    instance-of v10, v9, Lca/uhn/hl7v2/protocol/ReceivingApplication;

    if-eqz v10, :cond_3

    .line 111
    move-object v10, v9

    check-cast v10, Lca/uhn/hl7v2/protocol/ReceivingApplication;

    .line 112
    .local v10, "app":Lca/uhn/hl7v2/protocol/ReceivingApplication;, "Lca/uhn/hl7v2/protocol/ReceivingApplication<+Lca/uhn/hl7v2/model/Message;>;"
    goto :goto_1

    .line 112
    .end local v10    # "app":Lca/uhn/hl7v2/protocol/ReceivingApplication;, "Lca/uhn/hl7v2/protocol/ReceivingApplication<+Lca/uhn/hl7v2/model/Message;>;"
    :cond_3
    instance-of v10, v9, Lca/uhn/hl7v2/app/Application;

    if-eqz v10, :cond_4

    .line 113
    new-instance v10, Lca/uhn/hl7v2/protocol/impl/AppWrapper;

    move-object v11, v9

    check-cast v11, Lca/uhn/hl7v2/app/Application;

    invoke-direct {v10, v11}, Lca/uhn/hl7v2/protocol/impl/AppWrapper;-><init>(Lca/uhn/hl7v2/app/Application;)V

    .line 114
    .restart local v10    # "app":Lca/uhn/hl7v2/protocol/ReceivingApplication;, "Lca/uhn/hl7v2/protocol/ReceivingApplication<+Lca/uhn/hl7v2/model/Message;>;"
    nop

    .line 115
    :goto_1
    nop

    .line 121
    new-instance v11, Lca/uhn/hl7v2/protocol/impl/AppRoutingDataImpl;

    invoke-direct {v11, v3, v4, v5, v6}, Lca/uhn/hl7v2/protocol/impl/AppRoutingDataImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    nop

    .line 122
    .local v11, "rd":Lca/uhn/hl7v2/protocol/ApplicationRouter$AppRoutingData;
    invoke-interface {p0, v11, v10}, Lca/uhn/hl7v2/protocol/ApplicationRouter;->bindApplication(Lca/uhn/hl7v2/protocol/ApplicationRouter$AppRoutingData;Lca/uhn/hl7v2/protocol/ReceivingApplication;)V

    .line 122
    .end local v1    # "tok":Ljava/util/StringTokenizer;
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "type":Ljava/lang/String;
    .end local v4    # "event":Ljava/lang/String;
    .end local v5    # "procId":Ljava/lang/String;
    .end local v6    # "verId":Ljava/lang/String;
    .end local v7    # "className":Ljava/lang/String;
    .end local v8    # "appClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "appObject":Ljava/lang/Object;
    .end local v10    # "app":Lca/uhn/hl7v2/protocol/ReceivingApplication;, "Lca/uhn/hl7v2/protocol/ReceivingApplication<+Lca/uhn/hl7v2/model/Message;>;"
    .end local v11    # "rd":Lca/uhn/hl7v2/protocol/ApplicationRouter$AppRoutingData;
    goto :goto_0

    .line 115
    .restart local v1    # "tok":Ljava/util/StringTokenizer;
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v3    # "type":Ljava/lang/String;
    .restart local v4    # "event":Ljava/lang/String;
    .restart local v5    # "procId":Ljava/lang/String;
    .restart local v6    # "verId":Ljava/lang/String;
    .restart local v7    # "className":Ljava/lang/String;
    .restart local v8    # "appClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v9    # "appObject":Ljava/lang/Object;
    :cond_4
    new-instance v10, Lca/uhn/hl7v2/HL7Exception;

    .line 116
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "The specified class, "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    const-string v12, ", doesn\'t implement Application or ReceivingApplication."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 115
    invoke-direct {v10, v11}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;)V

    throw v10

    .line 96
    .end local v3    # "type":Ljava/lang/String;
    .end local v4    # "event":Ljava/lang/String;
    .end local v5    # "procId":Ljava/lang/String;
    .end local v6    # "verId":Ljava/lang/String;
    .end local v7    # "className":Ljava/lang/String;
    .end local v8    # "appClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "appObject":Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 97
    .local v3, "ne":Ljava/util/NoSuchElementException;
    new-instance v4, Lca/uhn/hl7v2/HL7Exception;

    .line 98
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Can\'t register applications from "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    const-string v6, ". The line \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    const-string v6, "\' is not of the form: message_type [tab] trigger_event "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    const-string v6, "[tab] processing ID [tab] version ID [tab] application_class. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    const-string v6, "*** NOTE TWO NEW FIELDS AS OF HAPI 0.5 ****. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 97
    invoke-direct {v4, v5}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;)V

    throw v4
.end method
