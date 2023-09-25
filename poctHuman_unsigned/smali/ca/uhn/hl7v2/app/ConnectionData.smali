.class Lca/uhn/hl7v2/app/ConnectionData;
.super Ljava/lang/Object;
.source "ConnectionData.java"


# instance fields
.field private host:Ljava/lang/String;

.field private lazy:Z

.field private parser:Lca/uhn/hl7v2/parser/Parser;

.field private port:I

.field private port2:I

.field private protocol:Lca/uhn/hl7v2/llp/LowerLayerProtocol;

.field private socketFactory:Lca/uhn/hl7v2/util/SocketFactory;

.field private tls:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;IILca/uhn/hl7v2/parser/Parser;Lca/uhn/hl7v2/llp/LowerLayerProtocol;Z)V
    .locals 9
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "outboundPort"    # I
    .param p3, "inboundPort"    # I
    .param p4, "parser"    # Lca/uhn/hl7v2/parser/Parser;
    .param p5, "protocol"    # Lca/uhn/hl7v2/llp/LowerLayerProtocol;
    .param p6, "tls"    # Z

    .line 57
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v8}, Lca/uhn/hl7v2/app/ConnectionData;-><init>(Ljava/lang/String;IILca/uhn/hl7v2/parser/Parser;Lca/uhn/hl7v2/llp/LowerLayerProtocol;ZLca/uhn/hl7v2/util/SocketFactory;Z)V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILca/uhn/hl7v2/parser/Parser;Lca/uhn/hl7v2/llp/LowerLayerProtocol;ZLca/uhn/hl7v2/util/SocketFactory;Z)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "outboundPort"    # I
    .param p3, "inboundPort"    # I
    .param p4, "parser"    # Lca/uhn/hl7v2/parser/Parser;
    .param p5, "protocol"    # Lca/uhn/hl7v2/llp/LowerLayerProtocol;
    .param p6, "tls"    # Z
    .param p7, "socketFactory"    # Lca/uhn/hl7v2/util/SocketFactory;
    .param p8, "lazy"    # Z

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lca/uhn/hl7v2/app/ConnectionData;->host:Ljava/lang/String;

    .line 63
    iput p2, p0, Lca/uhn/hl7v2/app/ConnectionData;->port:I

    .line 64
    iput p3, p0, Lca/uhn/hl7v2/app/ConnectionData;->port2:I

    .line 65
    iput-object p4, p0, Lca/uhn/hl7v2/app/ConnectionData;->parser:Lca/uhn/hl7v2/parser/Parser;

    .line 66
    iput-object p5, p0, Lca/uhn/hl7v2/app/ConnectionData;->protocol:Lca/uhn/hl7v2/llp/LowerLayerProtocol;

    .line 67
    iput-boolean p6, p0, Lca/uhn/hl7v2/app/ConnectionData;->tls:Z

    .line 68
    iput-object p7, p0, Lca/uhn/hl7v2/app/ConnectionData;->socketFactory:Lca/uhn/hl7v2/util/SocketFactory;

    .line 69
    iget-object v0, p0, Lca/uhn/hl7v2/app/ConnectionData;->socketFactory:Lca/uhn/hl7v2/util/SocketFactory;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lca/uhn/hl7v2/util/StandardSocketFactory;

    invoke-direct {v0}, Lca/uhn/hl7v2/util/StandardSocketFactory;-><init>()V

    iput-object v0, p0, Lca/uhn/hl7v2/app/ConnectionData;->socketFactory:Lca/uhn/hl7v2/util/SocketFactory;

    .line 72
    :cond_0
    iput-boolean p8, p0, Lca/uhn/hl7v2/app/ConnectionData;->lazy:Z

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILca/uhn/hl7v2/parser/Parser;Lca/uhn/hl7v2/llp/LowerLayerProtocol;)V
    .locals 6
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "parser"    # Lca/uhn/hl7v2/parser/Parser;
    .param p4, "protocol"    # Lca/uhn/hl7v2/llp/LowerLayerProtocol;

    .line 47
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lca/uhn/hl7v2/app/ConnectionData;-><init>(Ljava/lang/String;ILca/uhn/hl7v2/parser/Parser;Lca/uhn/hl7v2/llp/LowerLayerProtocol;Z)V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILca/uhn/hl7v2/parser/Parser;Lca/uhn/hl7v2/llp/LowerLayerProtocol;Z)V
    .locals 7
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "parser"    # Lca/uhn/hl7v2/parser/Parser;
    .param p4, "protocol"    # Lca/uhn/hl7v2/llp/LowerLayerProtocol;
    .param p5, "tls"    # Z

    .line 52
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lca/uhn/hl7v2/app/ConnectionData;-><init>(Ljava/lang/String;IILca/uhn/hl7v2/parser/Parser;Lca/uhn/hl7v2/llp/LowerLayerProtocol;Z)V

    .line 53
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 125
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 126
    return v0

    .line 127
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 128
    return v1

    .line 129
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 130
    return v1

    .line 131
    :cond_2
    move-object v2, p1

    check-cast v2, Lca/uhn/hl7v2/app/ConnectionData;

    .line 132
    .local v2, "other":Lca/uhn/hl7v2/app/ConnectionData;
    iget-object v3, p0, Lca/uhn/hl7v2/app/ConnectionData;->host:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 133
    iget-object v3, v2, Lca/uhn/hl7v2/app/ConnectionData;->host:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 134
    return v1

    .line 135
    :cond_3
    iget-object v3, p0, Lca/uhn/hl7v2/app/ConnectionData;->host:Ljava/lang/String;

    iget-object v4, v2, Lca/uhn/hl7v2/app/ConnectionData;->host:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 136
    return v1

    .line 137
    :cond_4
    iget-object v3, p0, Lca/uhn/hl7v2/app/ConnectionData;->parser:Lca/uhn/hl7v2/parser/Parser;

    if-nez v3, :cond_5

    .line 138
    iget-object v3, v2, Lca/uhn/hl7v2/app/ConnectionData;->parser:Lca/uhn/hl7v2/parser/Parser;

    if-eqz v3, :cond_7

    .line 139
    return v1

    .line 141
    :cond_5
    iget-object v3, v2, Lca/uhn/hl7v2/app/ConnectionData;->parser:Lca/uhn/hl7v2/parser/Parser;

    if-nez v3, :cond_6

    .line 142
    return v1

    .line 143
    :cond_6
    iget-object v3, p0, Lca/uhn/hl7v2/app/ConnectionData;->parser:Lca/uhn/hl7v2/parser/Parser;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    iget-object v4, v2, Lca/uhn/hl7v2/app/ConnectionData;->parser:Lca/uhn/hl7v2/parser/Parser;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 144
    return v1

    .line 146
    :cond_7
    iget-object v3, p0, Lca/uhn/hl7v2/app/ConnectionData;->protocol:Lca/uhn/hl7v2/llp/LowerLayerProtocol;

    if-nez v3, :cond_8

    .line 147
    iget-object v3, v2, Lca/uhn/hl7v2/app/ConnectionData;->protocol:Lca/uhn/hl7v2/llp/LowerLayerProtocol;

    if-eqz v3, :cond_a

    .line 148
    return v1

    .line 150
    :cond_8
    iget-object v3, v2, Lca/uhn/hl7v2/app/ConnectionData;->protocol:Lca/uhn/hl7v2/llp/LowerLayerProtocol;

    if-nez v3, :cond_9

    .line 151
    return v1

    .line 152
    :cond_9
    iget-object v3, p0, Lca/uhn/hl7v2/app/ConnectionData;->protocol:Lca/uhn/hl7v2/llp/LowerLayerProtocol;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    iget-object v4, v2, Lca/uhn/hl7v2/app/ConnectionData;->protocol:Lca/uhn/hl7v2/llp/LowerLayerProtocol;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 153
    return v1

    .line 155
    :cond_a
    iget v3, p0, Lca/uhn/hl7v2/app/ConnectionData;->port:I

    iget v4, v2, Lca/uhn/hl7v2/app/ConnectionData;->port:I

    if-eq v3, v4, :cond_b

    .line 156
    return v1

    .line 157
    :cond_b
    iget v3, p0, Lca/uhn/hl7v2/app/ConnectionData;->port2:I

    iget v4, v2, Lca/uhn/hl7v2/app/ConnectionData;->port2:I

    if-eq v3, v4, :cond_c

    .line 158
    return v1

    .line 159
    :cond_c
    return v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lca/uhn/hl7v2/app/ConnectionData;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getParser()Lca/uhn/hl7v2/parser/Parser;
    .locals 1

    .line 96
    iget-object v0, p0, Lca/uhn/hl7v2/app/ConnectionData;->parser:Lca/uhn/hl7v2/parser/Parser;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 80
    iget v0, p0, Lca/uhn/hl7v2/app/ConnectionData;->port:I

    return v0
.end method

.method public getPort2()I
    .locals 1

    .line 84
    iget v0, p0, Lca/uhn/hl7v2/app/ConnectionData;->port2:I

    return v0
.end method

.method public getProtocol()Lca/uhn/hl7v2/llp/LowerLayerProtocol;
    .locals 1

    .line 100
    iget-object v0, p0, Lca/uhn/hl7v2/app/ConnectionData;->protocol:Lca/uhn/hl7v2/llp/LowerLayerProtocol;

    return-object v0
.end method

.method public getSocketFactory()Lca/uhn/hl7v2/util/SocketFactory;
    .locals 1

    .line 104
    iget-object v0, p0, Lca/uhn/hl7v2/app/ConnectionData;->socketFactory:Lca/uhn/hl7v2/util/SocketFactory;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .line 113
    const/16 v0, 0x1f

    .line 114
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 115
    .local v1, "result":I
    const/16 v2, 0x1f

    mul-int v3, v2, v1

    iget-object v4, p0, Lca/uhn/hl7v2/app/ConnectionData;->host:Ljava/lang/String;

    const/4 v5, 0x0

    if-nez v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lca/uhn/hl7v2/app/ConnectionData;->host:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_0
    add-int/2addr v3, v4

    .line 116
    .end local v1    # "result":I
    .local v3, "result":I
    mul-int v1, v2, v3

    iget-object v4, p0, Lca/uhn/hl7v2/app/ConnectionData;->parser:Lca/uhn/hl7v2/parser/Parser;

    if-nez v4, :cond_1

    move v4, v5

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lca/uhn/hl7v2/app/ConnectionData;->parser:Lca/uhn/hl7v2/parser/Parser;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_1
    add-int/2addr v1, v4

    .line 117
    .end local v3    # "result":I
    .restart local v1    # "result":I
    mul-int v3, v2, v1

    iget-object v4, p0, Lca/uhn/hl7v2/app/ConnectionData;->protocol:Lca/uhn/hl7v2/llp/LowerLayerProtocol;

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    iget-object v4, p0, Lca/uhn/hl7v2/app/ConnectionData;->protocol:Lca/uhn/hl7v2/llp/LowerLayerProtocol;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v5

    :goto_2
    add-int/2addr v3, v5

    .line 118
    .end local v1    # "result":I
    .restart local v3    # "result":I
    mul-int v1, v2, v3

    iget v4, p0, Lca/uhn/hl7v2/app/ConnectionData;->port:I

    add-int/2addr v1, v4

    .line 119
    .end local v3    # "result":I
    .restart local v1    # "result":I
    mul-int/2addr v2, v1

    iget v3, p0, Lca/uhn/hl7v2/app/ConnectionData;->port2:I

    add-int/2addr v2, v3

    .line 120
    .end local v1    # "result":I
    .local v2, "result":I
    return v2
.end method

.method isLazy()Z
    .locals 1

    .line 92
    iget-boolean v0, p0, Lca/uhn/hl7v2/app/ConnectionData;->lazy:Z

    return v0
.end method

.method public isTls()Z
    .locals 1

    .line 88
    iget-boolean v0, p0, Lca/uhn/hl7v2/app/ConnectionData;->tls:Z

    return v0
.end method

.method public setSocketFactory(Lca/uhn/hl7v2/util/SocketFactory;)V
    .locals 0
    .param p1, "theSocketFactory"    # Lca/uhn/hl7v2/util/SocketFactory;

    .line 108
    iput-object p1, p0, Lca/uhn/hl7v2/app/ConnectionData;->socketFactory:Lca/uhn/hl7v2/util/SocketFactory;

    .line 109
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lca/uhn/hl7v2/app/ConnectionData;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lca/uhn/hl7v2/app/ConnectionData;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 166
    iget v1, p0, Lca/uhn/hl7v2/app/ConnectionData;->port2:I

    if-lez v1, :cond_0

    .line 167
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lca/uhn/hl7v2/app/ConnectionData;->port2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 168
    :cond_0
    invoke-virtual {p0}, Lca/uhn/hl7v2/app/ConnectionData;->isTls()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 169
    const-string v1, "(s)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
