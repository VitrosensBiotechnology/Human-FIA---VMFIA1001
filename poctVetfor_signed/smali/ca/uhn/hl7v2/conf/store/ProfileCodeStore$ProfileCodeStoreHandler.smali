.class Lca/uhn/hl7v2/conf/store/ProfileCodeStore$ProfileCodeStoreHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "ProfileCodeStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lca/uhn/hl7v2/conf/store/ProfileCodeStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProfileCodeStoreHandler"
.end annotation


# static fields
.field private static final HL7_TABLE_QNAME:Ljava/lang/String; = "hl7table"

.field private static final TABLE_ELEMENT_QNAME:Ljava/lang/String; = "tableElement"


# instance fields
.field private currentTable:Ljava/lang/String;

.field final synthetic this$0:Lca/uhn/hl7v2/conf/store/ProfileCodeStore;


# direct methods
.method private constructor <init>(Lca/uhn/hl7v2/conf/store/ProfileCodeStore;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lca/uhn/hl7v2/conf/store/ProfileCodeStore$ProfileCodeStoreHandler;->this$0:Lca/uhn/hl7v2/conf/store/ProfileCodeStore;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lca/uhn/hl7v2/conf/store/ProfileCodeStore;Lca/uhn/hl7v2/conf/store/ProfileCodeStore$ProfileCodeStoreHandler;)V
    .locals 0

    .line 129
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/conf/store/ProfileCodeStore$ProfileCodeStoreHandler;-><init>(Lca/uhn/hl7v2/conf/store/ProfileCodeStore;)V

    return-void
.end method


# virtual methods
.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 137
    const-string v0, "hl7table"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    const-string v0, "id"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lca/uhn/hl7v2/conf/store/ProfileCodeStore$ProfileCodeStoreHandler;->currentTable:Ljava/lang/String;

    .line 139
    iget-object v0, p0, Lca/uhn/hl7v2/conf/store/ProfileCodeStore$ProfileCodeStoreHandler;->this$0:Lca/uhn/hl7v2/conf/store/ProfileCodeStore;

    invoke-static {v0}, Lca/uhn/hl7v2/conf/store/ProfileCodeStore;->access$0(Lca/uhn/hl7v2/conf/store/ProfileCodeStore;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lca/uhn/hl7v2/conf/store/ProfileCodeStore$ProfileCodeStoreHandler;->currentTable:Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    goto :goto_0

    :cond_0
    const-string v0, "tableElement"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lca/uhn/hl7v2/conf/store/ProfileCodeStore$ProfileCodeStoreHandler;->this$0:Lca/uhn/hl7v2/conf/store/ProfileCodeStore;

    invoke-static {v0}, Lca/uhn/hl7v2/conf/store/ProfileCodeStore;->access$0(Lca/uhn/hl7v2/conf/store/ProfileCodeStore;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lca/uhn/hl7v2/conf/store/ProfileCodeStore$ProfileCodeStoreHandler;->currentTable:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "code"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    :cond_1
    :goto_0
    return-void
.end method
