.class public Lca/uhn/hl7v2/util/Hl7InputStreamMessageIterator;
.super Lca/uhn/hl7v2/HapiContextSupport;
.source "Hl7InputStreamMessageIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lca/uhn/hl7v2/HapiContextSupport;",
        "Ljava/util/Iterator<",
        "Lca/uhn/hl7v2/model/Message;",
        ">;"
    }
.end annotation


# instance fields
.field private myMessageType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lca/uhn/hl7v2/model/Message;",
            ">;"
        }
    .end annotation
.end field

.field private myWrapped:Lca/uhn/hl7v2/util/Hl7InputStreamMessageStringIterator;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "theInputStream"    # Ljava/io/InputStream;

    .line 49
    new-instance v0, Lca/uhn/hl7v2/DefaultHapiContext;

    invoke-static {}, Lca/uhn/hl7v2/validation/impl/ValidationContextFactory;->noValidation()Lca/uhn/hl7v2/validation/ValidationContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/DefaultHapiContext;-><init>(Lca/uhn/hl7v2/validation/ValidationContext;)V

    invoke-direct {p0, p1, v0}, Lca/uhn/hl7v2/util/Hl7InputStreamMessageIterator;-><init>(Ljava/io/InputStream;Lca/uhn/hl7v2/HapiContext;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lca/uhn/hl7v2/HapiContext;)V
    .locals 1
    .param p1, "theInputStream"    # Ljava/io/InputStream;
    .param p2, "theHapiContext"    # Lca/uhn/hl7v2/HapiContext;

    .line 71
    invoke-direct {p0, p2}, Lca/uhn/hl7v2/HapiContextSupport;-><init>(Lca/uhn/hl7v2/HapiContext;)V

    .line 72
    new-instance v0, Lca/uhn/hl7v2/util/Hl7InputStreamMessageStringIterator;

    invoke-direct {v0, p1}, Lca/uhn/hl7v2/util/Hl7InputStreamMessageStringIterator;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lca/uhn/hl7v2/util/Hl7InputStreamMessageIterator;->myWrapped:Lca/uhn/hl7v2/util/Hl7InputStreamMessageStringIterator;

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 2
    .param p1, "theReader"    # Ljava/io/Reader;

    .line 59
    new-instance v0, Lca/uhn/hl7v2/DefaultHapiContext;

    invoke-static {}, Lca/uhn/hl7v2/validation/impl/ValidationContextFactory;->noValidation()Lca/uhn/hl7v2/validation/ValidationContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/DefaultHapiContext;-><init>(Lca/uhn/hl7v2/validation/ValidationContext;)V

    invoke-direct {p0, p1, v0}, Lca/uhn/hl7v2/util/Hl7InputStreamMessageIterator;-><init>(Ljava/io/Reader;Lca/uhn/hl7v2/HapiContext;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Lca/uhn/hl7v2/HapiContext;)V
    .locals 1
    .param p1, "theReader"    # Ljava/io/Reader;
    .param p2, "theHapiContext"    # Lca/uhn/hl7v2/HapiContext;

    .line 84
    invoke-direct {p0, p2}, Lca/uhn/hl7v2/HapiContextSupport;-><init>(Lca/uhn/hl7v2/HapiContext;)V

    .line 85
    new-instance v0, Lca/uhn/hl7v2/util/Hl7InputStreamMessageStringIterator;

    invoke-direct {v0, p1}, Lca/uhn/hl7v2/util/Hl7InputStreamMessageStringIterator;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lca/uhn/hl7v2/util/Hl7InputStreamMessageIterator;->myWrapped:Lca/uhn/hl7v2/util/Hl7InputStreamMessageStringIterator;

    .line 86
    return-void
.end method

.method public static getForClasspathResource(Ljava/lang/String;)Lca/uhn/hl7v2/util/Hl7InputStreamMessageIterator;
    .locals 4
    .param p0, "theClasspath"    # Ljava/lang/String;

    .line 93
    const-class v0, Lca/uhn/hl7v2/util/Hl7InputStreamMessageIterator;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 94
    .local v0, "is":Ljava/io/InputStream;
    if-nez v0, :cond_0

    .line 95
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t find resource: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 97
    :cond_0
    new-instance v1, Lca/uhn/hl7v2/util/Hl7InputStreamMessageIterator;

    invoke-direct {v1, v0}, Lca/uhn/hl7v2/util/Hl7InputStreamMessageIterator;-><init>(Ljava/io/InputStream;)V

    return-object v1
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 104
    iget-object v0, p0, Lca/uhn/hl7v2/util/Hl7InputStreamMessageIterator;->myWrapped:Lca/uhn/hl7v2/util/Hl7InputStreamMessageStringIterator;

    invoke-virtual {v0}, Lca/uhn/hl7v2/util/Hl7InputStreamMessageStringIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Lca/uhn/hl7v2/model/Message;
    .locals 4

    .line 111
    iget-object v0, p0, Lca/uhn/hl7v2/util/Hl7InputStreamMessageIterator;->myWrapped:Lca/uhn/hl7v2/util/Hl7InputStreamMessageStringIterator;

    invoke-virtual {v0}, Lca/uhn/hl7v2/util/Hl7InputStreamMessageStringIterator;->next()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "nextString":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lca/uhn/hl7v2/util/Hl7InputStreamMessageIterator;->myMessageType:Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 115
    iget-object v1, p0, Lca/uhn/hl7v2/util/Hl7InputStreamMessageIterator;->myMessageType:Ljava/lang/Class;

    invoke-virtual {p0}, Lca/uhn/hl7v2/util/Hl7InputStreamMessageIterator;->getHapiContext()Lca/uhn/hl7v2/HapiContext;

    move-result-object v2

    invoke-interface {v2}, Lca/uhn/hl7v2/HapiContext;->getModelClassFactory()Lca/uhn/hl7v2/parser/ModelClassFactory;

    move-result-object v2

    invoke-static {v1, v2}, Lca/uhn/hl7v2/util/ReflectionUtil;->instantiateMessage(Ljava/lang/Class;Lca/uhn/hl7v2/parser/ModelClassFactory;)Lca/uhn/hl7v2/model/Message;

    move-result-object v1

    .line 116
    .local v1, "retVal":Lca/uhn/hl7v2/model/Message;
    invoke-interface {v1, v0}, Lca/uhn/hl7v2/model/Message;->parse(Ljava/lang/String;)V

    .line 117
    goto :goto_0

    .line 118
    .end local v1    # "retVal":Lca/uhn/hl7v2/model/Message;
    :cond_0
    invoke-virtual {p0}, Lca/uhn/hl7v2/util/Hl7InputStreamMessageIterator;->getHapiContext()Lca/uhn/hl7v2/HapiContext;

    move-result-object v1

    invoke-interface {v1}, Lca/uhn/hl7v2/HapiContext;->getPipeParser()Lca/uhn/hl7v2/parser/PipeParser;

    move-result-object v1

    invoke-virtual {v1, v0}, Lca/uhn/hl7v2/parser/PipeParser;->parse(Ljava/lang/String;)Lca/uhn/hl7v2/model/Message;

    move-result-object v1
    :try_end_0
    .catch Lca/uhn/hl7v2/parser/EncodingNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .restart local v1    # "retVal":Lca/uhn/hl7v2/model/Message;
    nop

    .line 123
    :goto_0
    nop

    .line 125
    return-object v1

    .line 122
    .end local v1    # "retVal":Lca/uhn/hl7v2/model/Message;
    :catch_0
    move-exception v1

    .line 123
    .local v1, "e":Lca/uhn/hl7v2/HL7Exception;
    new-instance v2, Lca/uhn/hl7v2/util/Hl7InputStreamMessageStringIterator$ParseFailureError;

    const-string v3, "Failed to parse message"

    invoke-direct {v2, v3, v1}, Lca/uhn/hl7v2/util/Hl7InputStreamMessageStringIterator$ParseFailureError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 120
    .end local v1    # "e":Lca/uhn/hl7v2/HL7Exception;
    :catch_1
    move-exception v1

    .line 121
    .local v1, "e":Lca/uhn/hl7v2/parser/EncodingNotSupportedException;
    new-instance v2, Lca/uhn/hl7v2/util/Hl7InputStreamMessageStringIterator$ParseFailureError;

    const-string v3, "Failed to parse message"

    invoke-direct {v2, v3, v1}, Lca/uhn/hl7v2/util/Hl7InputStreamMessageStringIterator$ParseFailureError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lca/uhn/hl7v2/util/Hl7InputStreamMessageIterator;->next()Lca/uhn/hl7v2/model/Message;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 135
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setIgnoreComments(Z)V
    .locals 1
    .param p1, "theIgnoreComments"    # Z

    .line 143
    iget-object v0, p0, Lca/uhn/hl7v2/util/Hl7InputStreamMessageIterator;->myWrapped:Lca/uhn/hl7v2/util/Hl7InputStreamMessageStringIterator;

    invoke-virtual {v0, p1}, Lca/uhn/hl7v2/util/Hl7InputStreamMessageStringIterator;->setIgnoreComments(Z)V

    .line 144
    return-void
.end method

.method public setMessageType(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lca/uhn/hl7v2/model/Message;",
            ">;)V"
        }
    .end annotation

    .line 151
    .local p1, "theMessageType":Ljava/lang/Class;, "Ljava/lang/Class<+Lca/uhn/hl7v2/model/Message;>;"
    iput-object p1, p0, Lca/uhn/hl7v2/util/Hl7InputStreamMessageIterator;->myMessageType:Ljava/lang/Class;

    .line 152
    return-void
.end method
