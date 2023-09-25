.class Lca/uhn/hl7v2/app/ActiveInitiator$1;
.super Ljava/lang/Object;
.source "ActiveInitiator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lca/uhn/hl7v2/app/ActiveInitiator;->main([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$generator:Lca/uhn/hl7v2/util/idgenerator/IDGenerator;

.field private final synthetic val$initiator:Lca/uhn/hl7v2/app/Initiator;

.field private final synthetic val$parser:Lca/uhn/hl7v2/parser/Parser;


# direct methods
.method constructor <init>(Lca/uhn/hl7v2/util/idgenerator/IDGenerator;Lca/uhn/hl7v2/parser/Parser;Lca/uhn/hl7v2/app/Initiator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lca/uhn/hl7v2/app/ActiveInitiator$1;->val$generator:Lca/uhn/hl7v2/util/idgenerator/IDGenerator;

    iput-object p2, p0, Lca/uhn/hl7v2/app/ActiveInitiator$1;->val$parser:Lca/uhn/hl7v2/parser/Parser;

    iput-object p3, p0, Lca/uhn/hl7v2/app/ActiveInitiator$1;->val$initiator:Lca/uhn/hl7v2/app/Initiator;

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 207
    :try_start_0
    iget-object v0, p0, Lca/uhn/hl7v2/app/ActiveInitiator$1;->val$generator:Lca/uhn/hl7v2/util/idgenerator/IDGenerator;

    invoke-interface {v0}, Lca/uhn/hl7v2/util/idgenerator/IDGenerator;->getID()Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "ID":Ljava/lang/String;
    iget-object v1, p0, Lca/uhn/hl7v2/app/ActiveInitiator$1;->val$parser:Lca/uhn/hl7v2/parser/Parser;

    const-string v2, "MSH|^~\\&|||||||ACK^^ACK|||R|2.4|\rMSA|AA"

    invoke-virtual {v1, v2}, Lca/uhn/hl7v2/parser/Parser;->parse(Ljava/lang/String;)Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    .line 209
    .local v1, "out":Lca/uhn/hl7v2/model/Message;
    new-instance v2, Lca/uhn/hl7v2/util/Terser;

    invoke-direct {v2, v1}, Lca/uhn/hl7v2/util/Terser;-><init>(Lca/uhn/hl7v2/model/Message;)V

    .line 210
    .local v2, "tOut":Lca/uhn/hl7v2/util/Terser;
    const-string v3, "/MSH-10"

    invoke-virtual {v2, v3, v0}, Lca/uhn/hl7v2/util/Terser;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object v3, p0, Lca/uhn/hl7v2/app/ActiveInitiator$1;->val$initiator:Lca/uhn/hl7v2/app/Initiator;

    invoke-interface {v3, v1}, Lca/uhn/hl7v2/app/Initiator;->sendAndReceive(Lca/uhn/hl7v2/model/Message;)Lca/uhn/hl7v2/model/Message;

    move-result-object v3

    .line 215
    .local v3, "in":Lca/uhn/hl7v2/model/Message;
    new-instance v4, Lca/uhn/hl7v2/util/Terser;

    invoke-direct {v4, v3}, Lca/uhn/hl7v2/util/Terser;-><init>(Lca/uhn/hl7v2/model/Message;)V

    .line 216
    .local v4, "tIn":Lca/uhn/hl7v2/util/Terser;
    const-string v5, "/MSA-2"

    invoke-virtual {v4, v5}, Lca/uhn/hl7v2/util/Terser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 217
    .local v5, "ackID":Ljava/lang/String;
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 218
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "OK - ack ID matches"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 219
    goto :goto_0

    .line 220
    :cond_0
    new-instance v6, Ljava/lang/RuntimeException;

    .line 221
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Ack ID for message "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 220
    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    .end local v0    # "ID":Ljava/lang/String;
    .end local v1    # "out":Lca/uhn/hl7v2/model/Message;
    .end local v2    # "tOut":Lca/uhn/hl7v2/util/Terser;
    .end local v3    # "in":Lca/uhn/hl7v2/model/Message;
    .end local v4    # "tIn":Lca/uhn/hl7v2/util/Terser;
    .end local v5    # "ackID":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 228
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
