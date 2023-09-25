.class public Lca/uhn/hl7v2/parser/GenericParser;
.super Lca/uhn/hl7v2/parser/Parser;
.source "GenericParser.java"


# instance fields
.field private final pipeParser:Lca/uhn/hl7v2/parser/PipeParser;

.field private primaryParser:Lca/uhn/hl7v2/parser/Parser;

.field private secondaryParser:Lca/uhn/hl7v2/parser/Parser;

.field private final xmlParser:Lca/uhn/hl7v2/parser/XMLParser;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    new-instance v0, Lca/uhn/hl7v2/DefaultHapiContext;

    invoke-direct {v0}, Lca/uhn/hl7v2/DefaultHapiContext;-><init>()V

    invoke-direct {p0, v0}, Lca/uhn/hl7v2/parser/GenericParser;-><init>(Lca/uhn/hl7v2/HapiContext;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Lca/uhn/hl7v2/HapiContext;)V
    .locals 1
    .param p1, "context"    # Lca/uhn/hl7v2/HapiContext;

    .line 63
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/parser/Parser;-><init>(Lca/uhn/hl7v2/HapiContext;)V

    .line 64
    new-instance v0, Lca/uhn/hl7v2/parser/PipeParser;

    invoke-direct {v0, p1}, Lca/uhn/hl7v2/parser/PipeParser;-><init>(Lca/uhn/hl7v2/HapiContext;)V

    iput-object v0, p0, Lca/uhn/hl7v2/parser/GenericParser;->pipeParser:Lca/uhn/hl7v2/parser/PipeParser;

    .line 65
    new-instance v0, Lca/uhn/hl7v2/parser/DefaultXMLParser;

    invoke-direct {v0, p1}, Lca/uhn/hl7v2/parser/DefaultXMLParser;-><init>(Lca/uhn/hl7v2/HapiContext;)V

    iput-object v0, p0, Lca/uhn/hl7v2/parser/GenericParser;->xmlParser:Lca/uhn/hl7v2/parser/XMLParser;

    .line 66
    invoke-virtual {p0}, Lca/uhn/hl7v2/parser/GenericParser;->setPipeParserAsPrimary()V

    .line 67
    return-void
.end method

.method public constructor <init>(Lca/uhn/hl7v2/parser/ModelClassFactory;)V
    .locals 1
    .param p1, "theFactory"    # Lca/uhn/hl7v2/parser/ModelClassFactory;

    .line 75
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/parser/Parser;-><init>(Lca/uhn/hl7v2/parser/ModelClassFactory;)V

    .line 77
    new-instance v0, Lca/uhn/hl7v2/parser/PipeParser;

    invoke-direct {v0, p1}, Lca/uhn/hl7v2/parser/PipeParser;-><init>(Lca/uhn/hl7v2/parser/ModelClassFactory;)V

    iput-object v0, p0, Lca/uhn/hl7v2/parser/GenericParser;->pipeParser:Lca/uhn/hl7v2/parser/PipeParser;

    .line 78
    new-instance v0, Lca/uhn/hl7v2/parser/DefaultXMLParser;

    invoke-direct {v0, p1}, Lca/uhn/hl7v2/parser/DefaultXMLParser;-><init>(Lca/uhn/hl7v2/parser/ModelClassFactory;)V

    iput-object v0, p0, Lca/uhn/hl7v2/parser/GenericParser;->xmlParser:Lca/uhn/hl7v2/parser/XMLParser;

    .line 79
    invoke-virtual {p0}, Lca/uhn/hl7v2/parser/GenericParser;->setPipeParserAsPrimary()V

    .line 80
    return-void
.end method

.method private getAppropriateParser(Ljava/lang/String;)Lca/uhn/hl7v2/parser/Parser;
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 133
    invoke-virtual {p0, p1}, Lca/uhn/hl7v2/parser/GenericParser;->getEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "encoding":Ljava/lang/String;
    const-string v1, "VB"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lca/uhn/hl7v2/parser/GenericParser;->pipeParser:Lca/uhn/hl7v2/parser/PipeParser;

    return-object v1

    .line 135
    :cond_0
    const-string v1, "XML"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lca/uhn/hl7v2/parser/GenericParser;->xmlParser:Lca/uhn/hl7v2/parser/XMLParser;

    return-object v1

    .line 136
    :cond_1
    new-instance v1, Lca/uhn/hl7v2/HL7Exception;

    const-string v2, "Can\'t find appropriate parser - encoding not recognized"

    invoke-direct {v1, v2}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getInstanceWithNoValidation()Lca/uhn/hl7v2/parser/GenericParser;
    .locals 3

    .line 316
    new-instance v0, Lca/uhn/hl7v2/parser/GenericParser;

    .line 317
    new-instance v1, Lca/uhn/hl7v2/DefaultHapiContext;

    invoke-static {}, Lca/uhn/hl7v2/validation/impl/ValidationContextFactory;->noValidation()Lca/uhn/hl7v2/validation/ValidationContext;

    move-result-object v2

    invoke-direct {v1, v2}, Lca/uhn/hl7v2/DefaultHapiContext;-><init>(Lca/uhn/hl7v2/validation/ValidationContext;)V

    .line 316
    invoke-direct {v0, v1}, Lca/uhn/hl7v2/parser/GenericParser;-><init>(Lca/uhn/hl7v2/HapiContext;)V

    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 328
    const-string v0, "MSH|^~\\&|RAMSOFT|SENDING FACILITY|RAMSOFT|RECEIVING FACILITY|20101223202939-0400||ADT^A08|101|P|2.3.1||||||||\rEVN|A08|20101223202939-0400||||\rPID||P12345^^^ISSUER|P12345^^^ISSUER||PATIENT^TEST^M^^^^||19741018|M|||10808 FOOTHILL BLVD^^RANCHO CUCAMONGA^CA^91730^US||(909)481-5872^^^sales@ramsoft.com|(909)481-5800x1||M||12345|286-50-9510|||\rPV1||O||||||||||||||||||||||||||||||||||||||||||||||||||\rAL1|1||^PORK^|\rAL1|2||^PENICILLIN^|"

    .line 335
    .local v0, "msgString":Ljava/lang/String;
    new-instance v1, Lca/uhn/hl7v2/parser/GenericParser;

    invoke-direct {v1}, Lca/uhn/hl7v2/parser/GenericParser;-><init>()V

    .line 336
    .local v1, "parser":Lca/uhn/hl7v2/parser/GenericParser;
    invoke-static {}, Lca/uhn/hl7v2/validation/impl/ValidationContextFactory;->noValidation()Lca/uhn/hl7v2/validation/ValidationContext;

    move-result-object v2

    invoke-virtual {v1, v2}, Lca/uhn/hl7v2/parser/GenericParser;->setValidationContext(Lca/uhn/hl7v2/validation/ValidationContext;)V

    .line 337
    invoke-virtual {v1, v0}, Lca/uhn/hl7v2/parser/GenericParser;->parse(Ljava/lang/String;)Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    .line 338
    .local v2, "msg":Lca/uhn/hl7v2/model/Message;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 340
    return-void
.end method


# virtual methods
.method protected doEncode(Lca/uhn/hl7v2/model/Message;)Ljava/lang/String;
    .locals 1
    .param p1, "source"    # Lca/uhn/hl7v2/model/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lca/uhn/hl7v2/parser/GenericParser;->primaryParser:Lca/uhn/hl7v2/parser/Parser;

    invoke-virtual {v0, p1}, Lca/uhn/hl7v2/parser/Parser;->doEncode(Lca/uhn/hl7v2/model/Message;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected doEncode(Lca/uhn/hl7v2/model/Message;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "source"    # Lca/uhn/hl7v2/model/Message;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;,
            Lca/uhn/hl7v2/parser/EncodingNotSupportedException;
        }
    .end annotation

    .line 149
    const/4 v0, 0x0

    .line 150
    .local v0, "ret":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 151
    const-string p2, ""

    .line 152
    :cond_0
    const-string v1, "VB"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 153
    iget-object v1, p0, Lca/uhn/hl7v2/parser/GenericParser;->pipeParser:Lca/uhn/hl7v2/parser/PipeParser;

    invoke-virtual {v1, p1}, Lca/uhn/hl7v2/parser/PipeParser;->doEncode(Lca/uhn/hl7v2/model/Message;)Ljava/lang/String;

    move-result-object v0

    .line 154
    goto :goto_0

    :cond_1
    const-string v1, "XML"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 155
    iget-object v1, p0, Lca/uhn/hl7v2/parser/GenericParser;->xmlParser:Lca/uhn/hl7v2/parser/XMLParser;

    invoke-virtual {v1, p1}, Lca/uhn/hl7v2/parser/XMLParser;->doEncode(Lca/uhn/hl7v2/model/Message;)Ljava/lang/String;

    move-result-object v0

    .line 156
    nop

    .line 160
    :goto_0
    return-object v0

    .line 157
    :cond_2
    new-instance v1, Lca/uhn/hl7v2/parser/EncodingNotSupportedException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The encoding "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    const-string v3, " is not supported by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 157
    invoke-direct {v1, v2}, Lca/uhn/hl7v2/parser/EncodingNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public doEncode(Lca/uhn/hl7v2/model/Segment;Lca/uhn/hl7v2/parser/EncodingCharacters;)Ljava/lang/String;
    .locals 1
    .param p1, "structure"    # Lca/uhn/hl7v2/model/Segment;
    .param p2, "encodingCharacters"    # Lca/uhn/hl7v2/parser/EncodingCharacters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 275
    iget-object v0, p0, Lca/uhn/hl7v2/parser/GenericParser;->primaryParser:Lca/uhn/hl7v2/parser/Parser;

    invoke-virtual {v0, p1, p2}, Lca/uhn/hl7v2/parser/Parser;->doEncode(Lca/uhn/hl7v2/model/Segment;Lca/uhn/hl7v2/parser/EncodingCharacters;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public doEncode(Lca/uhn/hl7v2/model/Type;Lca/uhn/hl7v2/parser/EncodingCharacters;)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # Lca/uhn/hl7v2/model/Type;
    .param p2, "encodingCharacters"    # Lca/uhn/hl7v2/parser/EncodingCharacters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lca/uhn/hl7v2/parser/GenericParser;->primaryParser:Lca/uhn/hl7v2/parser/Parser;

    invoke-virtual {v0, p1, p2}, Lca/uhn/hl7v2/parser/Parser;->doEncode(Lca/uhn/hl7v2/model/Type;Lca/uhn/hl7v2/parser/EncodingCharacters;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected doParse(Ljava/lang/String;Ljava/lang/String;)Lca/uhn/hl7v2/model/Message;
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 245
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/parser/GenericParser;->getAppropriateParser(Ljava/lang/String;)Lca/uhn/hl7v2/parser/Parser;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lca/uhn/hl7v2/parser/Parser;->doParse(Ljava/lang/String;Ljava/lang/String;)Lca/uhn/hl7v2/model/Message;

    move-result-object v0

    return-object v0
.end method

.method protected doParseForSpecificPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lca/uhn/hl7v2/model/Message;
    .locals 1
    .param p1, "theMessage"    # Ljava/lang/String;
    .param p2, "theVersion"    # Ljava/lang/String;
    .param p3, "thePackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;,
            Lca/uhn/hl7v2/parser/EncodingNotSupportedException;
        }
    .end annotation

    .line 323
    iget-object v0, p0, Lca/uhn/hl7v2/parser/GenericParser;->primaryParser:Lca/uhn/hl7v2/parser/Parser;

    invoke-virtual {v0, p1, p2, p3}, Lca/uhn/hl7v2/parser/Parser;->doParseForSpecificPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lca/uhn/hl7v2/model/Message;

    move-result-object v0

    return-object v0
.end method

.method public getAckID(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 218
    :try_start_0
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/parser/GenericParser;->getAppropriateParser(Ljava/lang/String;)Lca/uhn/hl7v2/parser/Parser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lca/uhn/hl7v2/parser/Parser;->getAckID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Lca/uhn/hl7v2/HL7Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method public getCriticalResponseData(Ljava/lang/String;)Lca/uhn/hl7v2/model/Segment;
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 180
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/parser/GenericParser;->getAppropriateParser(Ljava/lang/String;)Lca/uhn/hl7v2/parser/Parser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lca/uhn/hl7v2/parser/Parser;->getCriticalResponseData(Ljava/lang/String;)Lca/uhn/hl7v2/model/Segment;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultEncoding()Ljava/lang/String;
    .locals 1

    .line 235
    iget-object v0, p0, Lca/uhn/hl7v2/parser/GenericParser;->primaryParser:Lca/uhn/hl7v2/parser/Parser;

    invoke-virtual {v0}, Lca/uhn/hl7v2/parser/Parser;->getDefaultEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncoding(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 203
    iget-object v0, p0, Lca/uhn/hl7v2/parser/GenericParser;->primaryParser:Lca/uhn/hl7v2/parser/Parser;

    invoke-virtual {v0, p1}, Lca/uhn/hl7v2/parser/Parser;->getEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, "encoding":Ljava/lang/String;
    if-nez v0, :cond_0

    iget-object v1, p0, Lca/uhn/hl7v2/parser/GenericParser;->secondaryParser:Lca/uhn/hl7v2/parser/Parser;

    invoke-virtual {v1, p1}, Lca/uhn/hl7v2/parser/Parser;->getEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public getVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 191
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/parser/GenericParser;->getAppropriateParser(Ljava/lang/String;)Lca/uhn/hl7v2/parser/Parser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lca/uhn/hl7v2/parser/Parser;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isPipeParserPrimary()Z
    .locals 2

    .line 108
    iget-object v0, p0, Lca/uhn/hl7v2/parser/GenericParser;->primaryParser:Lca/uhn/hl7v2/parser/Parser;

    iget-object v1, p0, Lca/uhn/hl7v2/parser/GenericParser;->pipeParser:Lca/uhn/hl7v2/parser/PipeParser;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public parse(Ljava/lang/String;)Lca/uhn/hl7v2/model/Message;
    .locals 2
    .param p1, "theMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 253
    invoke-super {p0, p1}, Lca/uhn/hl7v2/parser/Parser;->parse(Ljava/lang/String;)Lca/uhn/hl7v2/model/Message;

    move-result-object v0

    .line 254
    .local v0, "retVal":Lca/uhn/hl7v2/model/Message;
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/parser/GenericParser;->getAppropriateParser(Ljava/lang/String;)Lca/uhn/hl7v2/parser/Parser;

    move-result-object v1

    .line 255
    .local v1, "parser":Lca/uhn/hl7v2/parser/Parser;
    invoke-interface {v0, v1}, Lca/uhn/hl7v2/model/Message;->setParser(Lca/uhn/hl7v2/parser/Parser;)V

    .line 256
    return-object v0
.end method

.method public parse(Lca/uhn/hl7v2/model/Message;Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Lca/uhn/hl7v2/model/Message;
    .param p2, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 306
    iget-object v0, p0, Lca/uhn/hl7v2/parser/GenericParser;->primaryParser:Lca/uhn/hl7v2/parser/Parser;

    invoke-virtual {v0, p1, p2}, Lca/uhn/hl7v2/parser/Parser;->parse(Lca/uhn/hl7v2/model/Message;Ljava/lang/String;)V

    .line 307
    return-void
.end method

.method public parse(Lca/uhn/hl7v2/model/Segment;Ljava/lang/String;Lca/uhn/hl7v2/parser/EncodingCharacters;)V
    .locals 1
    .param p1, "segment"    # Lca/uhn/hl7v2/model/Segment;
    .param p2, "string"    # Ljava/lang/String;
    .param p3, "encodingCharacters"    # Lca/uhn/hl7v2/parser/EncodingCharacters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 301
    iget-object v0, p0, Lca/uhn/hl7v2/parser/GenericParser;->primaryParser:Lca/uhn/hl7v2/parser/Parser;

    invoke-virtual {v0, p1, p2, p3}, Lca/uhn/hl7v2/parser/Parser;->parse(Lca/uhn/hl7v2/model/Segment;Ljava/lang/String;Lca/uhn/hl7v2/parser/EncodingCharacters;)V

    .line 302
    return-void
.end method

.method public parse(Lca/uhn/hl7v2/model/Type;Ljava/lang/String;Lca/uhn/hl7v2/parser/EncodingCharacters;)V
    .locals 1
    .param p1, "type"    # Lca/uhn/hl7v2/model/Type;
    .param p2, "string"    # Ljava/lang/String;
    .param p3, "encodingCharacters"    # Lca/uhn/hl7v2/parser/EncodingCharacters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 292
    iget-object v0, p0, Lca/uhn/hl7v2/parser/GenericParser;->primaryParser:Lca/uhn/hl7v2/parser/Parser;

    invoke-virtual {v0, p1, p2, p3}, Lca/uhn/hl7v2/parser/Parser;->parse(Lca/uhn/hl7v2/model/Type;Ljava/lang/String;Lca/uhn/hl7v2/parser/EncodingCharacters;)V

    .line 293
    return-void
.end method

.method public setPipeParserAsPrimary()V
    .locals 1

    .line 98
    iget-object v0, p0, Lca/uhn/hl7v2/parser/GenericParser;->pipeParser:Lca/uhn/hl7v2/parser/PipeParser;

    iput-object v0, p0, Lca/uhn/hl7v2/parser/GenericParser;->primaryParser:Lca/uhn/hl7v2/parser/Parser;

    .line 99
    iget-object v0, p0, Lca/uhn/hl7v2/parser/GenericParser;->xmlParser:Lca/uhn/hl7v2/parser/XMLParser;

    iput-object v0, p0, Lca/uhn/hl7v2/parser/GenericParser;->secondaryParser:Lca/uhn/hl7v2/parser/Parser;

    .line 100
    return-void
.end method

.method public setValidationContext(Lca/uhn/hl7v2/validation/ValidationContext;)V
    .locals 1
    .param p1, "theContext"    # Lca/uhn/hl7v2/validation/ValidationContext;

    .line 118
    invoke-super {p0, p1}, Lca/uhn/hl7v2/parser/Parser;->setValidationContext(Lca/uhn/hl7v2/validation/ValidationContext;)V

    .line 121
    iget-object v0, p0, Lca/uhn/hl7v2/parser/GenericParser;->xmlParser:Lca/uhn/hl7v2/parser/XMLParser;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lca/uhn/hl7v2/parser/GenericParser;->pipeParser:Lca/uhn/hl7v2/parser/PipeParser;

    invoke-virtual {v0, p1}, Lca/uhn/hl7v2/parser/PipeParser;->setValidationContext(Lca/uhn/hl7v2/validation/ValidationContext;)V

    .line 123
    iget-object v0, p0, Lca/uhn/hl7v2/parser/GenericParser;->xmlParser:Lca/uhn/hl7v2/parser/XMLParser;

    invoke-virtual {v0, p1}, Lca/uhn/hl7v2/parser/XMLParser;->setValidationContext(Lca/uhn/hl7v2/validation/ValidationContext;)V

    .line 125
    :cond_0
    return-void
.end method

.method public setXMLParserAsPrimary()V
    .locals 1

    .line 88
    iget-object v0, p0, Lca/uhn/hl7v2/parser/GenericParser;->xmlParser:Lca/uhn/hl7v2/parser/XMLParser;

    iput-object v0, p0, Lca/uhn/hl7v2/parser/GenericParser;->primaryParser:Lca/uhn/hl7v2/parser/Parser;

    .line 89
    iget-object v0, p0, Lca/uhn/hl7v2/parser/GenericParser;->pipeParser:Lca/uhn/hl7v2/parser/PipeParser;

    iput-object v0, p0, Lca/uhn/hl7v2/parser/GenericParser;->secondaryParser:Lca/uhn/hl7v2/parser/Parser;

    .line 90
    return-void
.end method

.method public supportsEncoding(Ljava/lang/String;)Z
    .locals 1
    .param p1, "encoding"    # Ljava/lang/String;

    .line 228
    iget-object v0, p0, Lca/uhn/hl7v2/parser/GenericParser;->primaryParser:Lca/uhn/hl7v2/parser/Parser;

    invoke-virtual {v0, p1}, Lca/uhn/hl7v2/parser/Parser;->supportsEncoding(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lca/uhn/hl7v2/parser/GenericParser;->secondaryParser:Lca/uhn/hl7v2/parser/Parser;

    invoke-virtual {v0, p1}, Lca/uhn/hl7v2/parser/Parser;->supportsEncoding(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
