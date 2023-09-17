.class Lca/uhn/hl7v2/app/Receiver$Grunt;
.super Ljava/lang/Object;
.source "Receiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lca/uhn/hl7v2/app/Receiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Grunt"
.end annotation


# instance fields
.field private conn:Lca/uhn/hl7v2/app/ActiveConnection;

.field private m:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lca/uhn/hl7v2/app/ActiveConnection;Ljava/lang/String;)V
    .locals 0
    .param p1, "conn"    # Lca/uhn/hl7v2/app/ActiveConnection;
    .param p2, "message"    # Ljava/lang/String;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Lca/uhn/hl7v2/app/Receiver$Grunt;->conn:Lca/uhn/hl7v2/app/ActiveConnection;

    .line 122
    iput-object p2, p0, Lca/uhn/hl7v2/app/Receiver$Grunt;->m:Ljava/lang/String;

    .line 123
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 127
    :try_start_0
    iget-object v0, p0, Lca/uhn/hl7v2/app/Receiver$Grunt;->conn:Lca/uhn/hl7v2/app/ActiveConnection;

    invoke-virtual {v0}, Lca/uhn/hl7v2/app/ActiveConnection;->getResponder()Lca/uhn/hl7v2/app/Responder;

    move-result-object v0

    iget-object v1, p0, Lca/uhn/hl7v2/app/Receiver$Grunt;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lca/uhn/hl7v2/app/Responder;->processMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "response":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 129
    iget-object v1, p0, Lca/uhn/hl7v2/app/Receiver$Grunt;->conn:Lca/uhn/hl7v2/app/ActiveConnection;

    invoke-virtual {v1}, Lca/uhn/hl7v2/app/ActiveConnection;->getAckWriter()Lca/uhn/hl7v2/llp/HL7Writer;

    move-result-object v1

    invoke-interface {v1, v0}, Lca/uhn/hl7v2/llp/HL7Writer;->writeMessage(Ljava/lang/String;)V

    .line 130
    goto :goto_0

    .line 131
    :cond_0
    invoke-static {}, Lca/uhn/hl7v2/app/Receiver;->access$0()Lorg/slf4j/Logger;

    move-result-object v1

    const-string v2, "Not responding to incoming message"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .end local v0    # "response":Ljava/lang/String;
    goto :goto_0

    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lca/uhn/hl7v2/app/Receiver;->access$0()Lorg/slf4j/Logger;

    move-result-object v1

    const-string v2, "Error while processing message: "

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 136
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
