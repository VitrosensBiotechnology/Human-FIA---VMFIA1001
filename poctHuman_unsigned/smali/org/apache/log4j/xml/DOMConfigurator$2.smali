.class Lorg/apache/log4j/xml/DOMConfigurator$2;
.super Ljava/lang/Object;
.source "DOMConfigurator.java"

# interfaces
.implements Lorg/apache/log4j/xml/DOMConfigurator$ParseAction;


# instance fields
.field private final synthetic this$0:Lorg/apache/log4j/xml/DOMConfigurator;

.field private final synthetic val$url:Ljava/net/URL;


# direct methods
.method constructor <init>(Lorg/apache/log4j/xml/DOMConfigurator;Ljava/net/URL;)V
    .locals 0

    .line 761
    iput-object p1, p0, Lorg/apache/log4j/xml/DOMConfigurator$2;->this$0:Lorg/apache/log4j/xml/DOMConfigurator;

    iput-object p2, p0, Lorg/apache/log4j/xml/DOMConfigurator$2;->val$url:Ljava/net/URL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Ljavax/xml/parsers/DocumentBuilder;)Lorg/w3c/dom/Document;
    .locals 4
    .param p1, "parser"    # Ljavax/xml/parsers/DocumentBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 763
    iget-object v0, p0, Lorg/apache/log4j/xml/DOMConfigurator$2;->val$url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 764
    .local v0, "uConn":Ljava/net/URLConnection;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 765
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 767
    .local v1, "stream":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-direct {v2, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 768
    .local v2, "src":Lorg/xml/sax/InputSource;
    iget-object v3, p0, Lorg/apache/log4j/xml/DOMConfigurator$2;->val$url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    .line 769
    invoke-virtual {p1, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 771
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    return-object v3

    .line 771
    .end local v2    # "src":Lorg/xml/sax/InputSource;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 775
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "url ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/log4j/xml/DOMConfigurator$2;->val$url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
