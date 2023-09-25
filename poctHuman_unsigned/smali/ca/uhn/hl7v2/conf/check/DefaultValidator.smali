.class public Lca/uhn/hl7v2/conf/check/DefaultValidator;
.super Lca/uhn/hl7v2/HapiContextSupport;
.source "DefaultValidator.java"

# interfaces
.implements Lca/uhn/hl7v2/conf/check/Validator;


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private codeStore:Lca/uhn/hl7v2/conf/store/CodeStore;

.field private enc:Lca/uhn/hl7v2/parser/EncodingCharacters;

.field private validateChildren:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 75
    const-class v0, Lca/uhn/hl7v2/conf/check/DefaultValidator;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lca/uhn/hl7v2/conf/check/DefaultValidator;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 81
    new-instance v0, Lca/uhn/hl7v2/DefaultHapiContext;

    invoke-direct {v0}, Lca/uhn/hl7v2/DefaultHapiContext;-><init>()V

    invoke-direct {p0, v0}, Lca/uhn/hl7v2/conf/check/DefaultValidator;-><init>(Lca/uhn/hl7v2/HapiContext;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Lca/uhn/hl7v2/HapiContext;)V
    .locals 3
    .param p1, "context"    # Lca/uhn/hl7v2/HapiContext;

    .line 85
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/HapiContextSupport;-><init>(Lca/uhn/hl7v2/HapiContext;)V

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lca/uhn/hl7v2/conf/check/DefaultValidator;->validateChildren:Z

    .line 86
    new-instance v0, Lca/uhn/hl7v2/parser/EncodingCharacters;

    const/16 v1, 0x7c

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lca/uhn/hl7v2/parser/EncodingCharacters;-><init>(CLjava/lang/String;)V

    iput-object v0, p0, Lca/uhn/hl7v2/conf/check/DefaultValidator;->enc:Lca/uhn/hl7v2/parser/EncodingCharacters;

    .line 87
    return-void
.end method

.method private static loadFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 651
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 653
    .local v0, "file":Ljava/io/File;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 654
    .local v1, "in":Ljava/io/BufferedReader;
    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v3, 0x1388

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 656
    .local v2, "buf":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->read()I

    move-result v3

    move v4, v3

    .line 656
    .local v4, "c":I
    const/4 v5, -0x1

    if-ne v3, v5, :cond_0

    .line 660
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 662
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 656
    :cond_0
    nop

    .line 657
    int-to-char v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 657
    .end local v4    # "c":I
    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 12
    .param p0, "args"    # [Ljava/lang/String;

    .line 623
    const/4 v0, 0x1

    const/4 v1, 0x2

    array-length v2, p0

    if-eq v2, v1, :cond_0

    .line 624
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Usage: DefaultValidator message_file profile_file"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 625
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 628
    :cond_0
    new-instance v1, Lca/uhn/hl7v2/conf/check/DefaultValidator;

    invoke-direct {v1}, Lca/uhn/hl7v2/conf/check/DefaultValidator;-><init>()V

    .line 630
    .local v1, "val":Lca/uhn/hl7v2/conf/check/DefaultValidator;
    const/4 v2, 0x0

    :try_start_0
    aget-object v2, p0, v2

    invoke-static {v2}, Lca/uhn/hl7v2/conf/check/DefaultValidator;->loadFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 631
    .local v2, "msgString":Ljava/lang/String;
    new-instance v3, Lca/uhn/hl7v2/parser/GenericParser;

    invoke-direct {v3}, Lca/uhn/hl7v2/parser/GenericParser;-><init>()V

    .line 632
    .local v3, "parser":Lca/uhn/hl7v2/parser/Parser;
    invoke-virtual {v3, v2}, Lca/uhn/hl7v2/parser/Parser;->parse(Ljava/lang/String;)Lca/uhn/hl7v2/model/Message;

    move-result-object v4

    .line 634
    .local v4, "message":Lca/uhn/hl7v2/model/Message;
    aget-object v5, p0, v0

    invoke-static {v5}, Lca/uhn/hl7v2/conf/check/DefaultValidator;->loadFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 635
    .local v5, "profileString":Ljava/lang/String;
    new-instance v6, Lca/uhn/hl7v2/conf/parser/ProfileParser;

    invoke-direct {v6, v0}, Lca/uhn/hl7v2/conf/parser/ProfileParser;-><init>(Z)V

    move-object v0, v6

    .line 636
    .local v0, "profParser":Lca/uhn/hl7v2/conf/parser/ProfileParser;
    invoke-virtual {v0, v5}, Lca/uhn/hl7v2/conf/parser/ProfileParser;->parse(Ljava/lang/String;)Lca/uhn/hl7v2/conf/spec/RuntimeProfile;

    move-result-object v6

    .line 638
    .local v6, "profile":Lca/uhn/hl7v2/conf/spec/RuntimeProfile;
    invoke-virtual {v6}, Lca/uhn/hl7v2/conf/spec/RuntimeProfile;->getMessage()Lca/uhn/hl7v2/conf/spec/message/StaticDef;

    move-result-object v7

    invoke-virtual {v1, v4, v7}, Lca/uhn/hl7v2/conf/check/DefaultValidator;->validate(Lca/uhn/hl7v2/model/Message;Lca/uhn/hl7v2/conf/spec/message/StaticDef;)[Lca/uhn/hl7v2/HL7Exception;

    move-result-object v7

    .line 640
    .local v7, "exceptions":[Lca/uhn/hl7v2/HL7Exception;
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "Exceptions: "

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 641
    const/4 v8, 0x0

    .line 641
    .local v8, "i":I
    :goto_0
    array-length v9, v7

    if-lt v8, v9, :cond_1

    .line 644
    .end local v0    # "profParser":Lca/uhn/hl7v2/conf/parser/ProfileParser;
    .end local v2    # "msgString":Ljava/lang/String;
    .end local v3    # "parser":Lca/uhn/hl7v2/parser/Parser;
    .end local v4    # "message":Lca/uhn/hl7v2/model/Message;
    .end local v5    # "profileString":Ljava/lang/String;
    .end local v6    # "profile":Lca/uhn/hl7v2/conf/spec/RuntimeProfile;
    .end local v7    # "exceptions":[Lca/uhn/hl7v2/HL7Exception;
    .end local v8    # "i":I
    goto :goto_1

    .line 642
    .restart local v0    # "profParser":Lca/uhn/hl7v2/conf/parser/ProfileParser;
    .restart local v2    # "msgString":Ljava/lang/String;
    .restart local v3    # "parser":Lca/uhn/hl7v2/parser/Parser;
    .restart local v4    # "message":Lca/uhn/hl7v2/model/Message;
    .restart local v5    # "profileString":Ljava/lang/String;
    .restart local v6    # "profile":Lca/uhn/hl7v2/conf/spec/RuntimeProfile;
    .restart local v7    # "exceptions":[Lca/uhn/hl7v2/HL7Exception;
    .restart local v8    # "i":I
    :cond_1
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    add-int/lit8 v11, v8, 0x1

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, ". "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v11, v7, v8

    invoke-virtual {v11}, Lca/uhn/hl7v2/HL7Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 641
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 644
    .end local v0    # "profParser":Lca/uhn/hl7v2/conf/parser/ProfileParser;
    .end local v2    # "msgString":Ljava/lang/String;
    .end local v3    # "parser":Lca/uhn/hl7v2/parser/Parser;
    .end local v4    # "message":Lca/uhn/hl7v2/model/Message;
    .end local v5    # "profileString":Ljava/lang/String;
    .end local v6    # "profile":Lca/uhn/hl7v2/conf/spec/RuntimeProfile;
    .end local v7    # "exceptions":[Lca/uhn/hl7v2/HL7Exception;
    .end local v8    # "i":I
    :catch_0
    move-exception v0

    .line 645
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 647
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method


# virtual methods
.method protected addTableTestResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "profileID"    # Ljava/lang/String;
    .param p2, "codeSystem"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lca/uhn/hl7v2/HL7Exception;",
            ">;)V"
        }
    .end annotation

    .line 490
    .local p4, "exList":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/HL7Exception;>;"
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    iget-boolean v0, p0, Lca/uhn/hl7v2/conf/check/DefaultValidator;->validateChildren:Z

    if-eqz v0, :cond_0

    .line 491
    invoke-virtual {p0, p1, p2, p3, p4}, Lca/uhn/hl7v2/conf/check/DefaultValidator;->testValueAgainstTable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 493
    :cond_0
    return-void
.end method

.method protected checkConstantValue(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "encoded"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lca/uhn/hl7v2/HL7Exception;",
            ">;)V"
        }
    .end annotation

    .line 398
    .local p3, "exList":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/HL7Exception;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 399
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 400
    new-instance v0, Lca/uhn/hl7v2/conf/check/ProfileNotFollowedException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    const-string v2, "\' doesn\'t equal constant value of \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/conf/check/ProfileNotFollowedException;-><init>(Ljava/lang/String;)V

    .line 400
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 403
    :cond_0
    return-void
.end method

.method protected checkDataType(Ljava/lang/String;Lca/uhn/hl7v2/model/Type;Ljava/util/List;)V
    .locals 4
    .param p1, "dataType"    # Ljava/lang/String;
    .param p2, "type"    # Lca/uhn/hl7v2/model/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lca/uhn/hl7v2/model/Type;",
            "Ljava/util/List<",
            "Lca/uhn/hl7v2/HL7Exception;",
            ">;)V"
        }
    .end annotation

    .line 415
    .local p3, "exList":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/HL7Exception;>;"
    invoke-interface {p2}, Lca/uhn/hl7v2/model/Type;->getName()Ljava/lang/String;

    move-result-object v0

    .line 416
    .local v0, "typeName":Ljava/lang/String;
    instance-of v1, p2, Lca/uhn/hl7v2/model/Varies;

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 417
    new-instance v1, Lca/uhn/hl7v2/conf/check/ProfileNotHL7CompliantException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "HL7 datatype "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    const-string v3, " doesn\'t match profile datatype "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lca/uhn/hl7v2/conf/check/ProfileNotHL7CompliantException;-><init>(Ljava/lang/String;)V

    .line 417
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 420
    :cond_0
    return-void
.end method

.method protected checkEventType(Ljava/lang/String;Lca/uhn/hl7v2/conf/spec/message/StaticDef;Ljava/util/List;)V
    .locals 3
    .param p1, "evType"    # Ljava/lang/String;
    .param p2, "profile"    # Lca/uhn/hl7v2/conf/spec/message/StaticDef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lca/uhn/hl7v2/conf/spec/message/StaticDef;",
            "Ljava/util/List<",
            "Lca/uhn/hl7v2/HL7Exception;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 128
    .local p3, "exList":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/HL7Exception;>;"
    invoke-virtual {p2}, Lca/uhn/hl7v2/conf/spec/message/StaticDef;->getEventType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    invoke-virtual {p2}, Lca/uhn/hl7v2/conf/spec/message/StaticDef;->getEventType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ALL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    new-instance v0, Lca/uhn/hl7v2/conf/check/ProfileNotFollowedException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Event type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    const-string v2, " doesn\'t match profile type of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lca/uhn/hl7v2/conf/spec/message/StaticDef;->getEventType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 130
    invoke-direct {v0, v1}, Lca/uhn/hl7v2/conf/check/ProfileNotFollowedException;-><init>(Ljava/lang/String;)V

    .line 132
    .local v0, "e":Lca/uhn/hl7v2/HL7Exception;
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    .end local v0    # "e":Lca/uhn/hl7v2/HL7Exception;
    :cond_0
    return-void
.end method

.method protected checkExtraComponents(Lca/uhn/hl7v2/model/Composite;ILjava/util/List;)V
    .locals 5
    .param p1, "comp"    # Lca/uhn/hl7v2/model/Composite;
    .param p2, "numInProfile"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lca/uhn/hl7v2/model/Composite;",
            "I",
            "Ljava/util/List<",
            "Lca/uhn/hl7v2/HL7Exception;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/conf/ProfileException;
        }
    .end annotation

    .line 602
    .local p3, "exList":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/HL7Exception;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 603
    .local v0, "extra":Ljava/lang/StringBuilder;
    move v1, p2

    .line 603
    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Lca/uhn/hl7v2/model/Composite;->getComponents()[Lca/uhn/hl7v2/model/Type;

    move-result-object v2

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 614
    .end local v1    # "i":I
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 615
    new-instance v1, Lca/uhn/hl7v2/conf/check/XElementPresentException;

    .line 616
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The following components are not defined in the profile: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lca/uhn/hl7v2/conf/check/XElementPresentException;-><init>(Ljava/lang/String;)V

    .line 615
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 619
    :cond_0
    return-void

    .line 605
    .restart local v1    # "i":I
    :cond_1
    :try_start_0
    invoke-interface {p1, v1}, Lca/uhn/hl7v2/model/Composite;->getComponent(I)Lca/uhn/hl7v2/model/Type;

    move-result-object v2

    iget-object v3, p0, Lca/uhn/hl7v2/conf/check/DefaultValidator;->enc:Lca/uhn/hl7v2/parser/EncodingCharacters;

    invoke-static {v2, v3}, Lca/uhn/hl7v2/parser/PipeParser;->encode(Lca/uhn/hl7v2/model/Type;Lca/uhn/hl7v2/parser/EncodingCharacters;)Ljava/lang/String;

    move-result-object v2

    .line 606
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 607
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lca/uhn/hl7v2/conf/check/DefaultValidator;->enc:Lca/uhn/hl7v2/parser/EncodingCharacters;

    invoke-virtual {v3}, Lca/uhn/hl7v2/parser/EncodingCharacters;->getComponentSeparator()C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Lca/uhn/hl7v2/model/DataTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 609
    .end local v2    # "s":Ljava/lang/String;
    nop

    .line 603
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 609
    :catch_0
    move-exception v2

    .line 610
    .local v2, "de":Lca/uhn/hl7v2/model/DataTypeException;
    new-instance v3, Lca/uhn/hl7v2/conf/ProfileException;

    const-string v4, "Problem testing against profile"

    invoke-direct {v3, v4, v2}, Lca/uhn/hl7v2/conf/ProfileException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected checkForExtraFields(Lca/uhn/hl7v2/model/Segment;Ljava/util/List;Ljava/util/List;)V
    .locals 8
    .param p1, "segment"    # Lca/uhn/hl7v2/model/Segment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lca/uhn/hl7v2/model/Segment;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Lca/uhn/hl7v2/HL7Exception;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/conf/ProfileException;
        }
    .end annotation

    .line 352
    .local p2, "allowedFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p3, "exList":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/HL7Exception;>;"
    const/4 v0, 0x1

    .line 352
    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Lca/uhn/hl7v2/model/Segment;->numFields()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 369
    .end local v0    # "i":I
    return-void

    .line 353
    .restart local v0    # "i":I
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 355
    :try_start_0
    invoke-interface {p1, v0}, Lca/uhn/hl7v2/model/Segment;->getField(I)[Lca/uhn/hl7v2/model/Type;

    move-result-object v1

    .line 356
    .local v1, "reps":[Lca/uhn/hl7v2/model/Type;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-lt v3, v2, :cond_1

    .line 364
    .end local v1    # "reps":[Lca/uhn/hl7v2/model/Type;
    goto :goto_2

    .line 356
    .restart local v1    # "reps":[Lca/uhn/hl7v2/model/Type;
    :cond_1
    aget-object v4, v1, v3

    .line 357
    .local v4, "rep":Lca/uhn/hl7v2/model/Type;
    invoke-interface {v4}, Lca/uhn/hl7v2/model/Type;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 358
    new-instance v5, Lca/uhn/hl7v2/conf/check/XElementPresentException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Field "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    invoke-interface {p1}, Lca/uhn/hl7v2/model/Segment;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    const-string v7, " appears in the message but not in the profile"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 358
    invoke-direct {v5, v6}, Lca/uhn/hl7v2/conf/check/XElementPresentException;-><init>(Ljava/lang/String;)V

    .line 361
    .local v5, "e":Lca/uhn/hl7v2/HL7Exception;
    invoke-interface {p3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    .end local v4    # "rep":Lca/uhn/hl7v2/model/Type;
    .end local v5    # "e":Lca/uhn/hl7v2/HL7Exception;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 364
    .end local v1    # "reps":[Lca/uhn/hl7v2/model/Type;
    :catch_0
    move-exception v1

    .line 365
    .local v1, "he":Lca/uhn/hl7v2/HL7Exception;
    new-instance v2, Lca/uhn/hl7v2/conf/ProfileException;

    const-string v3, "Problem testing against profile"

    invoke-direct {v2, v3, v1}, Lca/uhn/hl7v2/conf/ProfileException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 352
    .end local v1    # "he":Lca/uhn/hl7v2/HL7Exception;
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected checkForExtraStructures(Lca/uhn/hl7v2/model/Group;Ljava/util/List;Ljava/util/List;)V
    .locals 12
    .param p1, "group"    # Lca/uhn/hl7v2/model/Group;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lca/uhn/hl7v2/model/Group;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lca/uhn/hl7v2/HL7Exception;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/conf/ProfileException;
        }
    .end annotation

    .line 209
    .local p2, "allowedStructures":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "exList":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/HL7Exception;>;"
    invoke-interface {p1}, Lca/uhn/hl7v2/model/Group;->getNames()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, v0

    move v3, v1

    :goto_0
    if-lt v3, v2, :cond_0

    .line 224
    return-void

    .line 209
    :cond_0
    aget-object v4, v0, v3

    .line 210
    .local v4, "childName":Ljava/lang/String;
    invoke-interface {p2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 212
    :try_start_0
    invoke-interface {p1, v4}, Lca/uhn/hl7v2/model/Group;->getAll(Ljava/lang/String;)[Lca/uhn/hl7v2/model/Structure;

    move-result-object v5

    array-length v6, v5

    move v7, v1

    :goto_1
    if-lt v7, v6, :cond_1

    .line 219
    goto :goto_2

    .line 212
    :cond_1
    aget-object v8, v5, v7

    .line 213
    .local v8, "rep":Lca/uhn/hl7v2/model/Structure;
    invoke-interface {v8}, Lca/uhn/hl7v2/model/Structure;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    .line 214
    new-instance v9, Lca/uhn/hl7v2/conf/check/XElementPresentException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "The structure "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 215
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " appears in the message but not in the profile"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 214
    invoke-direct {v9, v10}, Lca/uhn/hl7v2/conf/check/XElementPresentException;-><init>(Ljava/lang/String;)V

    .line 216
    .local v9, "e":Lca/uhn/hl7v2/HL7Exception;
    invoke-interface {p3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    .end local v8    # "rep":Lca/uhn/hl7v2/model/Structure;
    .end local v9    # "e":Lca/uhn/hl7v2/HL7Exception;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, "he":Lca/uhn/hl7v2/HL7Exception;
    new-instance v1, Lca/uhn/hl7v2/conf/ProfileException;

    const-string v2, "Problem checking profile"

    invoke-direct {v1, v2, v0}, Lca/uhn/hl7v2/conf/ProfileException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 209
    .end local v0    # "he":Lca/uhn/hl7v2/HL7Exception;
    .end local v4    # "childName":Ljava/lang/String;
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method protected checkLength(JLjava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .param p1, "length"    # J
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "encoded"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lca/uhn/hl7v2/HL7Exception;",
            ">;)V"
        }
    .end annotation

    .line 407
    .local p5, "exList":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/HL7Exception;>;"
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v0, v0

    cmp-long v2, v0, p1

    if-lez v2, :cond_0

    .line 408
    new-instance v0, Lca/uhn/hl7v2/conf/check/ProfileNotFollowedException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    const-string v2, " has length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " which exceeds max of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/conf/check/ProfileNotFollowedException;-><init>(Ljava/lang/String;)V

    .line 408
    invoke-interface {p5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 411
    :cond_0
    return-void
.end method

.method protected checkMessageStructure(Ljava/lang/String;Lca/uhn/hl7v2/conf/spec/message/StaticDef;Ljava/util/List;)V
    .locals 3
    .param p1, "msgStruct"    # Ljava/lang/String;
    .param p2, "profile"    # Lca/uhn/hl7v2/conf/spec/message/StaticDef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lca/uhn/hl7v2/conf/spec/message/StaticDef;",
            "Ljava/util/List<",
            "Lca/uhn/hl7v2/HL7Exception;",
            ">;)V"
        }
    .end annotation

    .line 145
    .local p3, "exList":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/HL7Exception;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lca/uhn/hl7v2/conf/spec/message/StaticDef;->getMsgStructID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 146
    :cond_0
    new-instance v0, Lca/uhn/hl7v2/conf/check/ProfileNotFollowedException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Message structure "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    const-string v2, " doesn\'t match profile type of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lca/uhn/hl7v2/conf/spec/message/StaticDef;->getMsgStructID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 146
    invoke-direct {v0, v1}, Lca/uhn/hl7v2/conf/check/ProfileNotFollowedException;-><init>(Ljava/lang/String;)V

    .line 148
    .local v0, "e":Lca/uhn/hl7v2/HL7Exception;
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    .end local v0    # "e":Lca/uhn/hl7v2/HL7Exception;
    :cond_1
    return-void
.end method

.method protected checkMessageType(Ljava/lang/String;Lca/uhn/hl7v2/conf/spec/message/StaticDef;Ljava/util/List;)V
    .locals 3
    .param p1, "msgType"    # Ljava/lang/String;
    .param p2, "profile"    # Lca/uhn/hl7v2/conf/spec/message/StaticDef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lca/uhn/hl7v2/conf/spec/message/StaticDef;",
            "Ljava/util/List<",
            "Lca/uhn/hl7v2/HL7Exception;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 137
    .local p3, "exList":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/HL7Exception;>;"
    invoke-virtual {p2}, Lca/uhn/hl7v2/conf/spec/message/StaticDef;->getMsgType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    new-instance v0, Lca/uhn/hl7v2/conf/check/ProfileNotFollowedException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Message type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    const-string v2, " doesn\'t match profile type of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lca/uhn/hl7v2/conf/spec/message/StaticDef;->getMsgType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 138
    invoke-direct {v0, v1}, Lca/uhn/hl7v2/conf/check/ProfileNotFollowedException;-><init>(Ljava/lang/String;)V

    .line 140
    .local v0, "e":Lca/uhn/hl7v2/HL7Exception;
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    .end local v0    # "e":Lca/uhn/hl7v2/HL7Exception;
    :cond_0
    return-void
.end method

.method protected doTestComponent(Lca/uhn/hl7v2/model/Type;Lca/uhn/hl7v2/conf/spec/message/Component;Ljava/lang/String;Z)Ljava/util/List;
    .locals 9
    .param p1, "type"    # Lca/uhn/hl7v2/model/Type;
    .param p2, "profile"    # Lca/uhn/hl7v2/conf/spec/message/Component;
    .param p3, "profileID"    # Ljava/lang/String;
    .param p4, "theValidateChildren"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lca/uhn/hl7v2/model/Type;",
            "Lca/uhn/hl7v2/conf/spec/message/Component;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lca/uhn/hl7v2/HL7Exception;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/conf/ProfileException;,
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 567
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 568
    .local v0, "exList":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/HL7Exception;>;"
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, p3}, Lca/uhn/hl7v2/conf/check/DefaultValidator;->testType(Lca/uhn/hl7v2/model/Type;Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 571
    invoke-virtual {p2}, Lca/uhn/hl7v2/conf/spec/message/Component;->getSubComponents()I

    move-result v2

    if-lez v2, :cond_3

    invoke-virtual {p2}, Lca/uhn/hl7v2/conf/spec/message/Component;->getUsage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "X"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {p1}, Lca/uhn/hl7v2/model/Type;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 572
    const-class v2, Lca/uhn/hl7v2/model/Composite;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 573
    move-object v2, p1

    check-cast v2, Lca/uhn/hl7v2/model/Composite;

    .line 575
    .local v2, "comp":Lca/uhn/hl7v2/model/Composite;
    if-eqz p4, :cond_1

    .line 576
    const/4 v3, 0x1

    .line 576
    .local v3, "i":I
    :goto_0
    invoke-virtual {p2}, Lca/uhn/hl7v2/conf/spec/message/Component;->getSubComponents()I

    move-result v4

    if-le v3, v4, :cond_0

    .line 576
    .end local v3    # "i":I
    goto :goto_2

    .line 577
    .restart local v3    # "i":I
    :cond_0
    invoke-virtual {p2, v3}, Lca/uhn/hl7v2/conf/spec/message/Component;->getSubComponent(I)Lca/uhn/hl7v2/conf/spec/message/SubComponent;

    move-result-object v4

    .line 579
    .local v4, "childProfile":Lca/uhn/hl7v2/conf/spec/message/SubComponent;
    add-int/lit8 v5, v3, -0x1

    :try_start_0
    invoke-interface {v2, v5}, Lca/uhn/hl7v2/model/Composite;->getComponent(I)Lca/uhn/hl7v2/model/Type;

    move-result-object v5

    .line 580
    .local v5, "child":Lca/uhn/hl7v2/model/Type;
    invoke-virtual {p0, v5, v4, v1, p3}, Lca/uhn/hl7v2/conf/check/DefaultValidator;->testType(Lca/uhn/hl7v2/model/Type;Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Lca/uhn/hl7v2/model/DataTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 581
    .end local v5    # "child":Lca/uhn/hl7v2/model/Type;
    goto :goto_1

    :catch_0
    move-exception v5

    .line 582
    .local v5, "de":Lca/uhn/hl7v2/model/DataTypeException;
    new-instance v6, Lca/uhn/hl7v2/conf/check/ProfileNotHL7CompliantException;

    .line 583
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "More subcomponents in profile than allowed in message: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 584
    invoke-virtual {v5}, Lca/uhn/hl7v2/model/DataTypeException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lca/uhn/hl7v2/conf/check/ProfileNotHL7CompliantException;-><init>(Ljava/lang/String;)V

    .line 582
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 576
    .end local v4    # "childProfile":Lca/uhn/hl7v2/conf/spec/message/SubComponent;
    .end local v5    # "de":Lca/uhn/hl7v2/model/DataTypeException;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 589
    .end local v3    # "i":I
    :cond_1
    :goto_2
    invoke-virtual {p2}, Lca/uhn/hl7v2/conf/spec/message/Component;->getSubComponents()I

    move-result v1

    invoke-virtual {p0, v2, v1, v0}, Lca/uhn/hl7v2/conf/check/DefaultValidator;->checkExtraComponents(Lca/uhn/hl7v2/model/Composite;ILjava/util/List;)V

    .line 590
    .end local v2    # "comp":Lca/uhn/hl7v2/model/Composite;
    goto :goto_3

    .line 591
    :cond_2
    new-instance v1, Lca/uhn/hl7v2/conf/check/ProfileNotFollowedException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "A component has primitive type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 592
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " but the profile defines subcomponents"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lca/uhn/hl7v2/conf/check/ProfileNotFollowedException;-><init>(Ljava/lang/String;)V

    .line 591
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 596
    :cond_3
    :goto_3
    return-object v0
.end method

.method protected doTestField(Lca/uhn/hl7v2/model/Type;Lca/uhn/hl7v2/conf/spec/message/Field;ZLjava/lang/String;Z)Ljava/util/List;
    .locals 9
    .param p1, "type"    # Lca/uhn/hl7v2/model/Type;
    .param p2, "profile"    # Lca/uhn/hl7v2/conf/spec/message/Field;
    .param p3, "escape"    # Z
    .param p4, "profileID"    # Ljava/lang/String;
    .param p5, "theValidateChildren"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lca/uhn/hl7v2/model/Type;",
            "Lca/uhn/hl7v2/conf/spec/message/Field;",
            "Z",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lca/uhn/hl7v2/HL7Exception;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/conf/ProfileException;,
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 524
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 527
    .local v0, "exList":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/HL7Exception;>;"
    const/4 v1, 0x0

    .line 528
    .local v1, "encoded":Ljava/lang/String;
    if-nez p3, :cond_0

    const-class v2, Lca/uhn/hl7v2/model/Primitive;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 529
    move-object v2, p1

    check-cast v2, Lca/uhn/hl7v2/model/Primitive;

    invoke-interface {v2}, Lca/uhn/hl7v2/model/Primitive;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 531
    :cond_0
    invoke-virtual {p0, p1, p2, v1, p4}, Lca/uhn/hl7v2/conf/check/DefaultValidator;->testType(Lca/uhn/hl7v2/model/Type;Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 534
    if-eqz p5, :cond_3

    .line 535
    invoke-virtual {p2}, Lca/uhn/hl7v2/conf/spec/message/Field;->getComponents()I

    move-result v2

    if-lez v2, :cond_3

    invoke-virtual {p2}, Lca/uhn/hl7v2/conf/spec/message/Field;->getUsage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "X"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 536
    const-class v2, Lca/uhn/hl7v2/model/Composite;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 537
    move-object v2, p1

    check-cast v2, Lca/uhn/hl7v2/model/Composite;

    .line 538
    .local v2, "comp":Lca/uhn/hl7v2/model/Composite;
    const/4 v3, 0x1

    .line 538
    .local v3, "i":I
    :goto_0
    invoke-virtual {p2}, Lca/uhn/hl7v2/conf/spec/message/Field;->getComponents()I

    move-result v4

    if-le v3, v4, :cond_1

    .line 549
    .end local v3    # "i":I
    invoke-virtual {p2}, Lca/uhn/hl7v2/conf/spec/message/Field;->getComponents()I

    move-result v3

    invoke-virtual {p0, v2, v3, v0}, Lca/uhn/hl7v2/conf/check/DefaultValidator;->checkExtraComponents(Lca/uhn/hl7v2/model/Composite;ILjava/util/List;)V

    .line 550
    .end local v2    # "comp":Lca/uhn/hl7v2/model/Composite;
    goto :goto_2

    .line 539
    .restart local v2    # "comp":Lca/uhn/hl7v2/model/Composite;
    .restart local v3    # "i":I
    :cond_1
    invoke-virtual {p2, v3}, Lca/uhn/hl7v2/conf/spec/message/Field;->getComponent(I)Lca/uhn/hl7v2/conf/spec/message/Component;

    move-result-object v4

    .line 541
    .local v4, "childProfile":Lca/uhn/hl7v2/conf/spec/message/Component;
    add-int/lit8 v5, v3, -0x1

    :try_start_0
    invoke-interface {v2, v5}, Lca/uhn/hl7v2/model/Composite;->getComponent(I)Lca/uhn/hl7v2/model/Type;

    move-result-object v5

    .line 542
    .local v5, "child":Lca/uhn/hl7v2/model/Type;
    iget-boolean v6, p0, Lca/uhn/hl7v2/conf/check/DefaultValidator;->validateChildren:Z

    invoke-virtual {p0, v5, v4, p4, v6}, Lca/uhn/hl7v2/conf/check/DefaultValidator;->doTestComponent(Lca/uhn/hl7v2/model/Type;Lca/uhn/hl7v2/conf/spec/message/Component;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Lca/uhn/hl7v2/model/DataTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 543
    .end local v5    # "child":Lca/uhn/hl7v2/model/Type;
    goto :goto_1

    :catch_0
    move-exception v5

    .line 544
    .local v5, "de":Lca/uhn/hl7v2/model/DataTypeException;
    new-instance v6, Lca/uhn/hl7v2/conf/check/ProfileNotHL7CompliantException;

    .line 545
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "More components in profile than allowed in message: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 546
    invoke-virtual {v5}, Lca/uhn/hl7v2/model/DataTypeException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lca/uhn/hl7v2/conf/check/ProfileNotHL7CompliantException;-><init>(Ljava/lang/String;)V

    .line 544
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 538
    .end local v4    # "childProfile":Lca/uhn/hl7v2/conf/spec/message/Component;
    .end local v5    # "de":Lca/uhn/hl7v2/model/DataTypeException;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 551
    .end local v2    # "comp":Lca/uhn/hl7v2/model/Composite;
    .end local v3    # "i":I
    :cond_2
    new-instance v2, Lca/uhn/hl7v2/conf/check/ProfileNotHL7CompliantException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "A field has type primitive "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 552
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " but the profile defines components"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lca/uhn/hl7v2/conf/check/ProfileNotHL7CompliantException;-><init>(Ljava/lang/String;)V

    .line 551
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 557
    :cond_3
    :goto_2
    return-object v0
.end method

.method protected doTestGroup(Lca/uhn/hl7v2/model/Group;Lca/uhn/hl7v2/conf/spec/message/AbstractSegmentContainer;Ljava/lang/String;Z)Ljava/util/List;
    .locals 15
    .param p1, "group"    # Lca/uhn/hl7v2/model/Group;
    .param p2, "profile"    # Lca/uhn/hl7v2/conf/spec/message/AbstractSegmentContainer;
    .param p3, "profileID"    # Ljava/lang/String;
    .param p4, "theValidateChildren"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lca/uhn/hl7v2/model/Group;",
            "Lca/uhn/hl7v2/conf/spec/message/AbstractSegmentContainer;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lca/uhn/hl7v2/HL7Exception;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/conf/ProfileException;
        }
    .end annotation

    move-object v8, p0

    move-object/from16 v9, p1

    .line 162
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v1

    .line 163
    .local v10, "exList":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/HL7Exception;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v1

    .line 165
    .local v11, "allowedStructures":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Lca/uhn/hl7v2/conf/spec/message/AbstractSegmentContainer;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 197
    invoke-virtual {v8, v9, v11, v10}, Lca/uhn/hl7v2/conf/check/DefaultValidator;->checkForExtraStructures(Lca/uhn/hl7v2/model/Group;Ljava/util/List;Ljava/util/List;)V

    .line 199
    return-object v10

    .line 165
    :cond_0
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lca/uhn/hl7v2/conf/spec/message/ProfileStructure;

    .line 168
    .local v13, "struct":Lca/uhn/hl7v2/conf/spec/message/ProfileStructure;
    invoke-interface {v13}, Lca/uhn/hl7v2/conf/spec/message/ProfileStructure;->getUsage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "X"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 169
    invoke-interface {v13}, Lca/uhn/hl7v2/conf/spec/message/ProfileStructure;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v1

    .line 174
    .local v14, "instancesWithContent":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/model/Structure;>;"
    invoke-interface {v13}, Lca/uhn/hl7v2/conf/spec/message/ProfileStructure;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v1}, Lca/uhn/hl7v2/model/Group;->getAll(Ljava/lang/String;)[Lca/uhn/hl7v2/model/Structure;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-lt v3, v2, :cond_2

    .line 179
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v13}, Lca/uhn/hl7v2/conf/spec/message/ProfileStructure;->getMin()S

    move-result v3

    .line 180
    invoke-interface {v13}, Lca/uhn/hl7v2/conf/spec/message/ProfileStructure;->getMax()S

    move-result v4

    invoke-interface {v13}, Lca/uhn/hl7v2/conf/spec/message/ProfileStructure;->getUsage()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v13}, Lca/uhn/hl7v2/conf/spec/message/ProfileStructure;->getName()Ljava/lang/String;

    move-result-object v6

    .line 179
    move-object v1, v8

    move-object v7, v10

    invoke-virtual/range {v1 .. v7}, Lca/uhn/hl7v2/conf/check/DefaultValidator;->testCardinality(IIILjava/lang/String;Ljava/lang/String;Ljava/util/List;)Lca/uhn/hl7v2/HL7Exception;

    .line 183
    if-eqz p4, :cond_4

    .line 184
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 189
    .end local v14    # "instancesWithContent":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/model/Structure;>;"
    goto :goto_0

    .line 184
    .restart local v14    # "instancesWithContent":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/model/Structure;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lca/uhn/hl7v2/model/Structure;
    :try_end_0
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 185
    .local v2, "s":Lca/uhn/hl7v2/model/Structure;
    move-object/from16 v5, p3

    :try_start_1
    invoke-virtual {v8, v2, v13, v5}, Lca/uhn/hl7v2/conf/check/DefaultValidator;->testStructure(Lca/uhn/hl7v2/model/Structure;Lca/uhn/hl7v2/conf/spec/message/ProfileStructure;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v10, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 185
    .end local v2    # "s":Lca/uhn/hl7v2/model/Structure;
    goto :goto_2

    .line 174
    :cond_2
    move-object/from16 v5, p3

    aget-object v6, v1, v3

    .line 175
    .local v6, "instance":Lca/uhn/hl7v2/model/Structure;
    invoke-interface {v6}, Lca/uhn/hl7v2/model/Structure;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    .line 176
    invoke-interface {v14, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 174
    .end local v6    # "instance":Lca/uhn/hl7v2/model/Structure;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 189
    .end local v14    # "instancesWithContent":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/model/Structure;>;"
    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object/from16 v5, p3

    :goto_3
    move-object v1, v0

    .line 190
    .local v1, "he":Lca/uhn/hl7v2/HL7Exception;
    new-instance v2, Lca/uhn/hl7v2/conf/check/ProfileNotHL7CompliantException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-interface {v13}, Lca/uhn/hl7v2/conf/spec/message/ProfileStructure;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 191
    const-string v6, " not found in message"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lca/uhn/hl7v2/conf/check/ProfileNotHL7CompliantException;-><init>(Ljava/lang/String;)V

    .line 190
    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    .end local v1    # "he":Lca/uhn/hl7v2/HL7Exception;
    .end local v13    # "struct":Lca/uhn/hl7v2/conf/spec/message/ProfileStructure;
    goto/16 :goto_0

    .line 165
    :cond_4
    move-object/from16 v5, p3

    goto/16 :goto_0
.end method

.method protected doTestSegment(Lca/uhn/hl7v2/model/Segment;Lca/uhn/hl7v2/conf/spec/message/Seg;Ljava/lang/String;Z)Ljava/util/List;
    .locals 19
    .param p1, "segment"    # Lca/uhn/hl7v2/model/Segment;
    .param p2, "profile"    # Lca/uhn/hl7v2/conf/spec/message/Seg;
    .param p3, "profileID"    # Ljava/lang/String;
    .param p4, "theValidateChildren"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lca/uhn/hl7v2/model/Segment;",
            "Lca/uhn/hl7v2/conf/spec/message/Seg;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lca/uhn/hl7v2/HL7Exception;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/conf/ProfileException;
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    .line 287
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v1

    .line 288
    .local v10, "exList":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/HL7Exception;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v1

    .line 290
    .local v11, "allowedFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x1

    .line 290
    .local v1, "i":I
    move v12, v1

    .line 290
    .end local v1    # "i":I
    .local v12, "i":I
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lca/uhn/hl7v2/conf/spec/message/Seg;->getFields()I

    move-result v1

    if-le v12, v1, :cond_1

    .line 335
    .end local v12    # "i":I
    invoke-virtual {v8, v9, v11, v10}, Lca/uhn/hl7v2/conf/check/DefaultValidator;->checkForExtraFields(Lca/uhn/hl7v2/model/Segment;Ljava/util/List;Ljava/util/List;)V

    .line 337
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 340
    return-object v10

    .line 337
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lca/uhn/hl7v2/HL7Exception;

    .line 338
    .local v2, "ex":Lca/uhn/hl7v2/HL7Exception;
    invoke-virtual/range {p2 .. p2}, Lca/uhn/hl7v2/conf/spec/message/Seg;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lca/uhn/hl7v2/HL7Exception;->setSegmentName(Ljava/lang/String;)V

    .line 338
    .end local v2    # "ex":Lca/uhn/hl7v2/HL7Exception;
    goto :goto_1

    .line 291
    .restart local v12    # "i":I
    :cond_1
    move-object/from16 v13, p2

    invoke-virtual {v13, v12}, Lca/uhn/hl7v2/conf/spec/message/Seg;->getField(I)Lca/uhn/hl7v2/conf/spec/message/Field;

    move-result-object v14

    .line 294
    .local v14, "field":Lca/uhn/hl7v2/conf/spec/message/Field;
    invoke-virtual {v14}, Lca/uhn/hl7v2/conf/spec/message/Field;->getUsage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "X"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 295
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    :try_start_0
    invoke-interface {v9, v12}, Lca/uhn/hl7v2/model/Segment;->getField(I)[Lca/uhn/hl7v2/model/Type;

    move-result-object v1

    move-object v15, v1

    .line 300
    .local v15, "instances":[Lca/uhn/hl7v2/model/Type;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v1

    .line 301
    .local v7, "instancesWithContent":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/model/Type;>;"
    array-length v1, v15

    const/16 v16, 0x0

    move/from16 v2, v16

    :goto_2
    if-lt v2, v1, :cond_6

    .line 306
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v14}, Lca/uhn/hl7v2/conf/spec/message/Field;->getMin()S

    move-result v3

    .line 307
    invoke-virtual {v14}, Lca/uhn/hl7v2/conf/spec/message/Field;->getMax()S

    move-result v4

    invoke-virtual {v14}, Lca/uhn/hl7v2/conf/spec/message/Field;->getUsage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14}, Lca/uhn/hl7v2/conf/spec/message/Field;->getName()Ljava/lang/String;

    move-result-object v6

    .line 306
    move-object v1, v8

    move-object v9, v7

    move-object v7, v10

    .line 306
    .end local v7    # "instancesWithContent":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/model/Type;>;"
    .local v9, "instancesWithContent":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/model/Type;>;"
    invoke-virtual/range {v1 .. v7}, Lca/uhn/hl7v2/conf/check/DefaultValidator;->testCardinality(IIILjava/lang/String;Ljava/lang/String;Ljava/util/List;)Lca/uhn/hl7v2/HL7Exception;

    move-result-object v1

    move-object v7, v1

    .line 308
    .local v7, "ce":Lca/uhn/hl7v2/HL7Exception;
    if-eqz v7, :cond_2

    .line 309
    invoke-virtual {v7, v12}, Lca/uhn/hl7v2/HL7Exception;->setFieldPosition(I)V

    .line 313
    :cond_2
    if-eqz p4, :cond_8

    .line 314
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    .line 326
    .end local v7    # "ce":Lca/uhn/hl7v2/HL7Exception;
    .end local v9    # "instancesWithContent":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/model/Type;>;"
    .end local v15    # "instances":[Lca/uhn/hl7v2/model/Type;
    goto/16 :goto_6

    .line 314
    .restart local v7    # "ce":Lca/uhn/hl7v2/HL7Exception;
    .restart local v9    # "instancesWithContent":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/model/Type;>;"
    .restart local v15    # "instances":[Lca/uhn/hl7v2/model/Type;
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lca/uhn/hl7v2/model/Type;

    .line 316
    .local v2, "s":Lca/uhn/hl7v2/model/Type;
    invoke-virtual/range {p2 .. p2}, Lca/uhn/hl7v2/conf/spec/message/Seg;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "MSH"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x3

    if-ge v12, v1, :cond_4

    move/from16 v4, v16

    goto :goto_4

    :cond_4
    const/4 v1, 0x1

    move v4, v1

    .line 317
    .local v4, "escape":Z
    :goto_4
    nop

    .line 318
    iget-boolean v5, v8, Lca/uhn/hl7v2/conf/check/DefaultValidator;->validateChildren:Z

    .line 317
    move-object v1, v8

    move-object v3, v14

    move/from16 v17, v5

    move-object/from16 v5, p3

    move-object/from16 v18, v6

    move/from16 v6, v17

    invoke-virtual/range {v1 .. v6}, Lca/uhn/hl7v2/conf/check/DefaultValidator;->doTestField(Lca/uhn/hl7v2/model/Type;Lca/uhn/hl7v2/conf/spec/message/Field;ZLjava/lang/String;Z)Ljava/util/List;

    move-result-object v1

    .line 319
    .local v1, "childExceptions":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/HL7Exception;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_5

    .line 322
    invoke-interface {v10, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 314
    .end local v1    # "childExceptions":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/HL7Exception;>;"
    .end local v2    # "s":Lca/uhn/hl7v2/model/Type;
    .end local v4    # "escape":Z
    move-object/from16 v6, v18

    goto :goto_3

    .line 319
    .restart local v1    # "childExceptions":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/HL7Exception;>;"
    .restart local v2    # "s":Lca/uhn/hl7v2/model/Type;
    .restart local v4    # "escape":Z
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lca/uhn/hl7v2/HL7Exception;

    .line 320
    .local v5, "ex":Lca/uhn/hl7v2/HL7Exception;
    invoke-virtual {v5, v12}, Lca/uhn/hl7v2/HL7Exception;->setFieldPosition(I)V

    .line 320
    .end local v5    # "ex":Lca/uhn/hl7v2/HL7Exception;
    goto :goto_5

    .line 301
    .end local v1    # "childExceptions":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/HL7Exception;>;"
    .end local v2    # "s":Lca/uhn/hl7v2/model/Type;
    .end local v4    # "escape":Z
    .end local v9    # "instancesWithContent":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/model/Type;>;"
    .local v7, "instancesWithContent":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/model/Type;>;"
    :cond_6
    move-object v9, v7

    .line 301
    .end local v7    # "instancesWithContent":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/model/Type;>;"
    .restart local v9    # "instancesWithContent":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/model/Type;>;"
    aget-object v3, v15, v2

    .line 302
    .local v3, "instance":Lca/uhn/hl7v2/model/Type;
    invoke-interface {v3}, Lca/uhn/hl7v2/model/Type;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    .line 303
    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    .end local v3    # "instance":Lca/uhn/hl7v2/model/Type;
    :cond_7
    add-int/lit8 v2, v2, 0x1

    move-object v7, v9

    move-object/from16 v9, p1

    goto/16 :goto_2

    .line 326
    .end local v9    # "instancesWithContent":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/model/Type;>;"
    .end local v15    # "instances":[Lca/uhn/hl7v2/model/Type;
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 327
    .local v1, "he":Lca/uhn/hl7v2/HL7Exception;
    new-instance v2, Lca/uhn/hl7v2/conf/check/ProfileNotHL7CompliantException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Field "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 328
    const-string v4, " not found in message"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lca/uhn/hl7v2/conf/check/ProfileNotHL7CompliantException;-><init>(Ljava/lang/String;)V

    .line 327
    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    .end local v1    # "he":Lca/uhn/hl7v2/HL7Exception;
    .end local v14    # "field":Lca/uhn/hl7v2/conf/spec/message/Field;
    :cond_8
    :goto_6
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v9, p1

    goto/16 :goto_0
.end method

.method public setCodeStore(Lca/uhn/hl7v2/conf/store/CodeStore;)V
    .locals 0
    .param p1, "theCodeStore"    # Lca/uhn/hl7v2/conf/store/CodeStore;

    .line 106
    iput-object p1, p0, Lca/uhn/hl7v2/conf/check/DefaultValidator;->codeStore:Lca/uhn/hl7v2/conf/store/CodeStore;

    .line 107
    return-void
.end method

.method public setValidateChildren(Z)V
    .locals 0
    .param p1, "validateChildren"    # Z

    .line 94
    iput-boolean p1, p0, Lca/uhn/hl7v2/conf/check/DefaultValidator;->validateChildren:Z

    .line 95
    return-void
.end method

.method protected testCardinality(IIILjava/lang/String;Ljava/lang/String;Ljava/util/List;)Lca/uhn/hl7v2/HL7Exception;
    .locals 4
    .param p1, "reps"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I
    .param p4, "usage"    # Ljava/lang/String;
    .param p5, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lca/uhn/hl7v2/HL7Exception;",
            ">;)",
            "Lca/uhn/hl7v2/HL7Exception;"
        }
    .end annotation

    .line 239
    .local p6, "exList":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/HL7Exception;>;"
    const/4 v0, 0x0

    .line 240
    .local v0, "e":Lca/uhn/hl7v2/HL7Exception;
    if-ge p1, p2, :cond_0

    const-string v1, "R"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 241
    new-instance v1, Lca/uhn/hl7v2/conf/check/ProfileNotFollowedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " must have at least "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 242
    const-string v3, " repetitions (has "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 241
    invoke-direct {v1, v2}, Lca/uhn/hl7v2/conf/check/ProfileNotFollowedException;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 243
    goto :goto_0

    :cond_0
    if-lez p3, :cond_1

    if-le p1, p3, :cond_1

    .line 244
    new-instance v1, Lca/uhn/hl7v2/conf/check/ProfileNotFollowedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " must have no more than "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 245
    const-string v3, " repetitions (has "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 244
    invoke-direct {v1, v2}, Lca/uhn/hl7v2/conf/check/ProfileNotFollowedException;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 247
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {p6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    :cond_2
    return-object v0
.end method

.method public testComponent(Lca/uhn/hl7v2/model/Type;Lca/uhn/hl7v2/conf/spec/message/Component;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "type"    # Lca/uhn/hl7v2/model/Type;
    .param p2, "profile"    # Lca/uhn/hl7v2/conf/spec/message/Component;
    .param p3, "profileID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lca/uhn/hl7v2/model/Type;",
            "Lca/uhn/hl7v2/conf/spec/message/Component;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lca/uhn/hl7v2/HL7Exception;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/conf/ProfileException;,
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 562
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lca/uhn/hl7v2/conf/check/DefaultValidator;->doTestComponent(Lca/uhn/hl7v2/model/Type;Lca/uhn/hl7v2/conf/spec/message/Component;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public testField(Lca/uhn/hl7v2/model/Type;Lca/uhn/hl7v2/conf/spec/message/Field;ZLjava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "type"    # Lca/uhn/hl7v2/model/Type;
    .param p2, "profile"    # Lca/uhn/hl7v2/conf/spec/message/Field;
    .param p3, "escape"    # Z
    .param p4, "profileID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lca/uhn/hl7v2/model/Type;",
            "Lca/uhn/hl7v2/conf/spec/message/Field;",
            "Z",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lca/uhn/hl7v2/HL7Exception;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/conf/ProfileException;,
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 519
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lca/uhn/hl7v2/conf/check/DefaultValidator;->doTestField(Lca/uhn/hl7v2/model/Type;Lca/uhn/hl7v2/conf/spec/message/Field;ZLjava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public testGroup(Lca/uhn/hl7v2/model/Group;Lca/uhn/hl7v2/conf/spec/message/SegGroup;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "group"    # Lca/uhn/hl7v2/model/Group;
    .param p2, "profile"    # Lca/uhn/hl7v2/conf/spec/message/SegGroup;
    .param p3, "profileID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lca/uhn/hl7v2/model/Group;",
            "Lca/uhn/hl7v2/conf/spec/message/SegGroup;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lca/uhn/hl7v2/HL7Exception;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/conf/ProfileException;
        }
    .end annotation

    .line 157
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lca/uhn/hl7v2/conf/check/DefaultValidator;->doTestGroup(Lca/uhn/hl7v2/model/Group;Lca/uhn/hl7v2/conf/spec/message/AbstractSegmentContainer;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public testLength(Lca/uhn/hl7v2/model/Type;I)Lca/uhn/hl7v2/HL7Exception;
    .locals 5
    .param p1, "type"    # Lca/uhn/hl7v2/model/Type;
    .param p2, "maxLength"    # I

    .line 428
    const/4 v0, 0x0

    .line 429
    .local v0, "e":Lca/uhn/hl7v2/HL7Exception;
    iget-object v1, p0, Lca/uhn/hl7v2/conf/check/DefaultValidator;->enc:Lca/uhn/hl7v2/parser/EncodingCharacters;

    invoke-static {p1, v1}, Lca/uhn/hl7v2/parser/PipeParser;->encode(Lca/uhn/hl7v2/model/Type;Lca/uhn/hl7v2/parser/EncodingCharacters;)Ljava/lang/String;

    move-result-object v1

    .line 430
    .local v1, "encoded":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, p2, :cond_0

    .line 431
    new-instance v2, Lca/uhn/hl7v2/conf/check/ProfileNotFollowedException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Length of "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 432
    const-string v4, " exceeds maximum of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 431
    invoke-direct {v2, v3}, Lca/uhn/hl7v2/conf/check/ProfileNotFollowedException;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .line 434
    :cond_0
    return-object v0
.end method

.method public testSegment(Lca/uhn/hl7v2/model/Segment;Lca/uhn/hl7v2/conf/spec/message/Seg;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "segment"    # Lca/uhn/hl7v2/model/Segment;
    .param p2, "profile"    # Lca/uhn/hl7v2/conf/spec/message/Seg;
    .param p3, "profileID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lca/uhn/hl7v2/model/Segment;",
            "Lca/uhn/hl7v2/conf/spec/message/Seg;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lca/uhn/hl7v2/HL7Exception;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/conf/ProfileException;
        }
    .end annotation

    .line 282
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lca/uhn/hl7v2/conf/check/DefaultValidator;->doTestSegment(Lca/uhn/hl7v2/model/Segment;Lca/uhn/hl7v2/conf/spec/message/Seg;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public testStructure(Lca/uhn/hl7v2/model/Structure;Lca/uhn/hl7v2/conf/spec/message/ProfileStructure;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "s"    # Lca/uhn/hl7v2/model/Structure;
    .param p2, "profile"    # Lca/uhn/hl7v2/conf/spec/message/ProfileStructure;
    .param p3, "profileID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lca/uhn/hl7v2/model/Structure;",
            "Lca/uhn/hl7v2/conf/spec/message/ProfileStructure;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lca/uhn/hl7v2/HL7Exception;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/conf/ProfileException;
        }
    .end annotation

    .line 256
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 257
    .local v0, "exList":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/HL7Exception;>;"
    instance-of v1, p2, Lca/uhn/hl7v2/conf/spec/message/Seg;

    if-eqz v1, :cond_1

    .line 258
    const-class v1, Lca/uhn/hl7v2/model/Segment;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 259
    move-object v1, p1

    check-cast v1, Lca/uhn/hl7v2/model/Segment;

    move-object v2, p2

    check-cast v2, Lca/uhn/hl7v2/conf/spec/message/Seg;

    iget-boolean v3, p0, Lca/uhn/hl7v2/conf/check/DefaultValidator;->validateChildren:Z

    invoke-virtual {p0, v1, v2, p3, v3}, Lca/uhn/hl7v2/conf/check/DefaultValidator;->doTestSegment(Lca/uhn/hl7v2/model/Segment;Lca/uhn/hl7v2/conf/spec/message/Seg;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 260
    goto :goto_0

    .line 261
    :cond_0
    new-instance v1, Lca/uhn/hl7v2/conf/check/ProfileNotHL7CompliantException;

    .line 262
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Mismatch between a segment in the profile and the structure "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " in the message"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lca/uhn/hl7v2/conf/check/ProfileNotHL7CompliantException;-><init>(Ljava/lang/String;)V

    .line 261
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    goto :goto_0

    :cond_1
    instance-of v1, p2, Lca/uhn/hl7v2/conf/spec/message/SegGroup;

    if-eqz v1, :cond_3

    .line 266
    const-class v1, Lca/uhn/hl7v2/model/Group;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 267
    move-object v1, p1

    check-cast v1, Lca/uhn/hl7v2/model/Group;

    move-object v2, p2

    check-cast v2, Lca/uhn/hl7v2/conf/spec/message/SegGroup;

    invoke-virtual {p0, v1, v2, p3}, Lca/uhn/hl7v2/conf/check/DefaultValidator;->testGroup(Lca/uhn/hl7v2/model/Group;Lca/uhn/hl7v2/conf/spec/message/SegGroup;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 268
    goto :goto_0

    .line 269
    :cond_2
    new-instance v1, Lca/uhn/hl7v2/conf/check/ProfileNotHL7CompliantException;

    .line 270
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Mismatch between a group in the profile and the structure "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 271
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " in the message"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lca/uhn/hl7v2/conf/check/ProfileNotHL7CompliantException;-><init>(Ljava/lang/String;)V

    .line 269
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    :cond_3
    :goto_0
    return-object v0
.end method

.method public testType(Lca/uhn/hl7v2/model/Type;Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "type"    # Lca/uhn/hl7v2/model/Type;
    .param p3, "encoded"    # Ljava/lang/String;
    .param p4, "profileID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lca/uhn/hl7v2/model/Type;",
            "Lca/uhn/hl7v2/conf/spec/message/AbstractComponent<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lca/uhn/hl7v2/HL7Exception;",
            ">;"
        }
    .end annotation

    .line 379
    .local p2, "profile":Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;, "Lca/uhn/hl7v2/conf/spec/message/AbstractComponent<*>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 380
    .local v0, "exList":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/HL7Exception;>;"
    if-nez p3, :cond_0

    .line 381
    iget-object v1, p0, Lca/uhn/hl7v2/conf/check/DefaultValidator;->enc:Lca/uhn/hl7v2/parser/EncodingCharacters;

    invoke-static {p1, v1}, Lca/uhn/hl7v2/parser/PipeParser;->encode(Lca/uhn/hl7v2/model/Type;Lca/uhn/hl7v2/parser/EncodingCharacters;)Ljava/lang/String;

    move-result-object p3

    .line 383
    :cond_0
    invoke-virtual {p2}, Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;->getUsage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p3, v1, v2, v0}, Lca/uhn/hl7v2/conf/check/DefaultValidator;->testUsage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 385
    invoke-virtual {p2}, Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;->getUsage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "X"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 386
    invoke-virtual {p2}, Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;->getDatatype()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1, v0}, Lca/uhn/hl7v2/conf/check/DefaultValidator;->checkDataType(Ljava/lang/String;Lca/uhn/hl7v2/model/Type;Ljava/util/List;)V

    .line 387
    invoke-virtual {p2}, Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;->getLength()J

    move-result-wide v2

    invoke-virtual {p2}, Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;->getName()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move-object v5, p3

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lca/uhn/hl7v2/conf/check/DefaultValidator;->checkLength(JLjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 388
    invoke-virtual {p2}, Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;->getConstantValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p3, v0}, Lca/uhn/hl7v2/conf/check/DefaultValidator;->checkConstantValue(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 390
    invoke-virtual {p0, p1, p2, p4, v0}, Lca/uhn/hl7v2/conf/check/DefaultValidator;->testTypeAgainstTable(Lca/uhn/hl7v2/model/Type;Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;Ljava/lang/String;Ljava/util/List;)V

    .line 393
    :cond_1
    return-object v0
.end method

.method protected testTypeAgainstTable(Lca/uhn/hl7v2/model/Type;Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .param p1, "type"    # Lca/uhn/hl7v2/model/Type;
    .param p3, "profileID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lca/uhn/hl7v2/model/Type;",
            "Lca/uhn/hl7v2/conf/spec/message/AbstractComponent<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lca/uhn/hl7v2/HL7Exception;",
            ">;)V"
        }
    .end annotation

    .line 473
    .local p2, "profile":Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;, "Lca/uhn/hl7v2/conf/spec/message/AbstractComponent<*>;"
    .local p4, "exList":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/HL7Exception;>;"
    invoke-virtual {p2}, Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;->getTable()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 474
    invoke-interface {p1}, Lca/uhn/hl7v2/model/Type;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "IS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lca/uhn/hl7v2/model/Type;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ID"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 475
    :cond_0
    const-string v0, "HL7%1$4s"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p2}, Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;->getTable()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 476
    .local v0, "codeSystem":Ljava/lang/String;
    move-object v1, p1

    check-cast v1, Lca/uhn/hl7v2/model/Primitive;

    invoke-interface {v1}, Lca/uhn/hl7v2/model/Primitive;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 477
    .local v1, "value":Ljava/lang/String;
    invoke-virtual {p0, p3, v0, v1, p4}, Lca/uhn/hl7v2/conf/check/DefaultValidator;->addTableTestResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 478
    .end local v0    # "codeSystem":Ljava/lang/String;
    .end local v1    # "value":Ljava/lang/String;
    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lca/uhn/hl7v2/model/Type;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 479
    invoke-static {p1, v1, v1}, Lca/uhn/hl7v2/util/Terser;->getPrimitive(Lca/uhn/hl7v2/model/Type;II)Lca/uhn/hl7v2/model/Primitive;

    move-result-object v0

    invoke-interface {v0}, Lca/uhn/hl7v2/model/Primitive;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 480
    .local v0, "value":Ljava/lang/String;
    const/4 v2, 0x3

    invoke-static {p1, v2, v1}, Lca/uhn/hl7v2/util/Terser;->getPrimitive(Lca/uhn/hl7v2/model/Type;II)Lca/uhn/hl7v2/model/Primitive;

    move-result-object v2

    invoke-interface {v2}, Lca/uhn/hl7v2/model/Primitive;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 481
    .local v2, "codeSystem":Ljava/lang/String;
    invoke-virtual {p0, p3, v2, v0, p4}, Lca/uhn/hl7v2/conf/check/DefaultValidator;->addTableTestResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 483
    const/4 v3, 0x4

    invoke-static {p1, v3, v1}, Lca/uhn/hl7v2/util/Terser;->getPrimitive(Lca/uhn/hl7v2/model/Type;II)Lca/uhn/hl7v2/model/Primitive;

    move-result-object v3

    invoke-interface {v3}, Lca/uhn/hl7v2/model/Primitive;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 484
    const/4 v3, 0x6

    invoke-static {p1, v3, v1}, Lca/uhn/hl7v2/util/Terser;->getPrimitive(Lca/uhn/hl7v2/model/Type;II)Lca/uhn/hl7v2/model/Primitive;

    move-result-object v1

    invoke-interface {v1}, Lca/uhn/hl7v2/model/Primitive;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 485
    .end local v2    # "codeSystem":Ljava/lang/String;
    .local v1, "codeSystem":Ljava/lang/String;
    invoke-virtual {p0, p3, v1, v0, p4}, Lca/uhn/hl7v2/conf/check/DefaultValidator;->addTableTestResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 487
    .end local v0    # "value":Ljava/lang/String;
    .end local v1    # "codeSystem":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void
.end method

.method protected testUsage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .param p1, "encoded"    # Ljava/lang/String;
    .param p2, "usage"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lca/uhn/hl7v2/HL7Exception;",
            ">;)V"
        }
    .end annotation

    .line 447
    .local p4, "exList":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/HL7Exception;>;"
    const-string v0, "R"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 448
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 449
    new-instance v0, Lca/uhn/hl7v2/conf/check/ProfileNotFollowedException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required element "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is missing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/conf/check/ProfileNotFollowedException;-><init>(Ljava/lang/String;)V

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 450
    goto :goto_0

    :cond_0
    const-string v0, "RE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 452
    const-string v0, "O"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 454
    const-string v0, "C"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 456
    const-string v0, "CE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 458
    const-string v0, "X"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 459
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 460
    new-instance v0, Lca/uhn/hl7v2/conf/check/XElementPresentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Element \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    const-string v2, "\" is present but specified as not used (X)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/conf/check/XElementPresentException;-><init>(Ljava/lang/String;)V

    .line 460
    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 462
    goto :goto_0

    :cond_1
    const-string v0, "B"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 465
    :cond_2
    :goto_0
    return-void
.end method

.method protected testValueAgainstTable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .param p1, "profileID"    # Ljava/lang/String;
    .param p2, "codeSystem"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lca/uhn/hl7v2/HL7Exception;",
            ">;)V"
        }
    .end annotation

    .line 496
    .local p4, "exList":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/HL7Exception;>;"
    iget-object v0, p0, Lca/uhn/hl7v2/conf/check/DefaultValidator;->codeStore:Lca/uhn/hl7v2/conf/store/CodeStore;

    .line 497
    .local v0, "store":Lca/uhn/hl7v2/conf/store/CodeStore;
    iget-object v1, p0, Lca/uhn/hl7v2/conf/check/DefaultValidator;->codeStore:Lca/uhn/hl7v2/conf/store/CodeStore;

    if-nez v1, :cond_0

    .line 498
    invoke-virtual {p0}, Lca/uhn/hl7v2/conf/check/DefaultValidator;->getHapiContext()Lca/uhn/hl7v2/HapiContext;

    move-result-object v1

    invoke-interface {v1}, Lca/uhn/hl7v2/HapiContext;->getCodeStoreRegistry()Lca/uhn/hl7v2/conf/store/CodeStoreRegistry;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lca/uhn/hl7v2/conf/store/CodeStoreRegistry;->getCodeStore(Ljava/lang/String;Ljava/lang/String;)Lca/uhn/hl7v2/conf/store/CodeStore;

    move-result-object v0

    .line 501
    :cond_0
    if-nez v0, :cond_1

    .line 502
    sget-object v1, Lca/uhn/hl7v2/conf/check/DefaultValidator;->log:Lorg/slf4j/Logger;

    .line 503
    const-string v2, "Not checking value {}: no code store was found for profile {} code system {}"

    .line 504
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    .line 502
    invoke-interface {v1, v2, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 505
    goto :goto_0

    .line 506
    :cond_1
    invoke-interface {v0, p2}, Lca/uhn/hl7v2/conf/store/CodeStore;->knowsCodes(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 507
    sget-object v1, Lca/uhn/hl7v2/conf/check/DefaultValidator;->log:Lorg/slf4j/Logger;

    const-string v2, "Not checking value {}: Don\'t have a table for code system {}"

    .line 508
    nop

    .line 507
    invoke-interface {v1, v2, p3, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 509
    goto :goto_0

    :cond_2
    invoke-interface {v0, p2, p3}, Lca/uhn/hl7v2/conf/store/CodeStore;->isValidCode(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 510
    new-instance v1, Lca/uhn/hl7v2/conf/check/ProfileNotFollowedException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Code \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' not found in table "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", profile "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lca/uhn/hl7v2/conf/check/ProfileNotFollowedException;-><init>(Ljava/lang/String;)V

    .line 510
    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 515
    :cond_3
    :goto_0
    return-void
.end method

.method public validate(Lca/uhn/hl7v2/model/Message;Lca/uhn/hl7v2/conf/spec/message/StaticDef;)[Lca/uhn/hl7v2/HL7Exception;
    .locals 4
    .param p1, "message"    # Lca/uhn/hl7v2/model/Message;
    .param p2, "profile"    # Lca/uhn/hl7v2/conf/spec/message/StaticDef;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/conf/ProfileException;,
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .local v0, "exList":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/HL7Exception;>;"
    new-instance v1, Lca/uhn/hl7v2/util/Terser;

    invoke-direct {v1, p1}, Lca/uhn/hl7v2/util/Terser;-><init>(Lca/uhn/hl7v2/model/Message;)V

    .line 117
    .local v1, "t":Lca/uhn/hl7v2/util/Terser;
    const-string v2, "/MSH-9-1"

    invoke-virtual {v1, v2}, Lca/uhn/hl7v2/util/Terser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p2, v0}, Lca/uhn/hl7v2/conf/check/DefaultValidator;->checkMessageType(Ljava/lang/String;Lca/uhn/hl7v2/conf/spec/message/StaticDef;Ljava/util/List;)V

    .line 118
    const-string v2, "/MSH-9-2"

    invoke-virtual {v1, v2}, Lca/uhn/hl7v2/util/Terser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p2, v0}, Lca/uhn/hl7v2/conf/check/DefaultValidator;->checkEventType(Ljava/lang/String;Lca/uhn/hl7v2/conf/spec/message/StaticDef;Ljava/util/List;)V

    .line 119
    const-string v2, "/MSH-9-3"

    invoke-virtual {v1, v2}, Lca/uhn/hl7v2/util/Terser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p2, v0}, Lca/uhn/hl7v2/conf/check/DefaultValidator;->checkMessageStructure(Ljava/lang/String;Lca/uhn/hl7v2/conf/spec/message/StaticDef;Ljava/util/List;)V

    .line 121
    invoke-virtual {p2}, Lca/uhn/hl7v2/conf/spec/message/StaticDef;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    .line 122
    iget-boolean v3, p0, Lca/uhn/hl7v2/conf/check/DefaultValidator;->validateChildren:Z

    .line 121
    invoke-virtual {p0, p1, p2, v2, v3}, Lca/uhn/hl7v2/conf/check/DefaultValidator;->doTestGroup(Lca/uhn/hl7v2/model/Group;Lca/uhn/hl7v2/conf/spec/message/AbstractSegmentContainer;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 123
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lca/uhn/hl7v2/HL7Exception;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lca/uhn/hl7v2/HL7Exception;

    return-object v2
.end method
