.class public Lorg/apache/log4j/chainsaw/Main;
.super Ljavax/swing/JFrame;
.source "Main.java"


# static fields
.field private static final DEFAULT_PORT:I = 0x115d

.field private static final LOG:Lorg/apache/log4j/Logger;

.field public static final PORT_PROP_NAME:Ljava/lang/String; = "chainsaw.port"

.field static synthetic class$org$apache$log4j$chainsaw$Main:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    sget-object v0, Lorg/apache/log4j/chainsaw/Main;->class$org$apache$log4j$chainsaw$Main:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.log4j.chainsaw.Main"

    invoke-static {v0}, Lorg/apache/log4j/chainsaw/Main;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/chainsaw/Main;->class$org$apache$log4j$chainsaw$Main:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/log4j/chainsaw/Main;->class$org$apache$log4j$chainsaw$Main:Ljava/lang/Class;

    :goto_0
    invoke-static {v0}, Lorg/apache/log4j/Logger;->getLogger(Ljava/lang/Class;)Lorg/apache/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/chainsaw/Main;->LOG:Lorg/apache/log4j/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 12

    .line 61
    const-string v0, "CHAINSAW - Log4J Log Viewer"

    invoke-direct {p0, v0}, Ljavax/swing/JFrame;-><init>(Ljava/lang/String;)V

    .line 63
    new-instance v0, Lorg/apache/log4j/chainsaw/MyTableModel;

    invoke-direct {v0}, Lorg/apache/log4j/chainsaw/MyTableModel;-><init>()V

    .line 66
    .local v0, "model":Lorg/apache/log4j/chainsaw/MyTableModel;
    new-instance v1, Ljavax/swing/JMenuBar;

    invoke-direct {v1}, Ljavax/swing/JMenuBar;-><init>()V

    .line 67
    .local v1, "menuBar":Ljavax/swing/JMenuBar;
    invoke-virtual {p0, v1}, Lorg/apache/log4j/chainsaw/Main;->setJMenuBar(Ljavax/swing/JMenuBar;)V

    .line 68
    new-instance v2, Ljavax/swing/JMenu;

    const-string v3, "File"

    invoke-direct {v2, v3}, Ljavax/swing/JMenu;-><init>(Ljava/lang/String;)V

    .line 69
    .local v2, "menu":Ljavax/swing/JMenu;
    invoke-virtual {v1, v2}, Ljavax/swing/JMenuBar;->add(Ljavax/swing/JMenu;)Ljavax/swing/JMenu;

    .line 72
    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Lorg/apache/log4j/chainsaw/LoadXMLAction;

    invoke-direct {v4, p0, v0}, Lorg/apache/log4j/chainsaw/LoadXMLAction;-><init>(Ljavax/swing/JFrame;Lorg/apache/log4j/chainsaw/MyTableModel;)V

    .line 73
    .local v4, "lxa":Lorg/apache/log4j/chainsaw/LoadXMLAction;
    new-instance v5, Ljavax/swing/JMenuItem;

    const-string v6, "Load file..."

    invoke-direct {v5, v6}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    .line 74
    .local v5, "loadMenuItem":Ljavax/swing/JMenuItem;
    invoke-virtual {v2, v5}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 75
    invoke-virtual {v5, v4}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .end local v4    # "lxa":Lorg/apache/log4j/chainsaw/LoadXMLAction;
    .end local v5    # "loadMenuItem":Ljavax/swing/JMenuItem;
    goto :goto_0

    .line 83
    :catch_0
    move-exception v4

    .line 84
    .local v4, "e":Ljava/lang/Exception;
    sget-object v5, Lorg/apache/log4j/chainsaw/Main;->LOG:Lorg/apache/log4j/Logger;

    const-string v6, "Unable to create the action to load XML files"

    invoke-virtual {v5, v6, v4}, Lorg/apache/log4j/Logger;->info(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 85
    const-string v5, "Unable to create a XML parser - unable to load XML events."

    const-string v6, "CHAINSAW"

    invoke-static {p0, v5, v6, v3}, Ljavax/swing/JOptionPane;->showMessageDialog(Ljava/awt/Component;Ljava/lang/Object;Ljava/lang/String;I)V

    .line 85
    .end local v4    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 76
    :catch_1
    move-exception v4

    .line 77
    .local v4, "e":Ljava/lang/NoClassDefFoundError;
    sget-object v5, Lorg/apache/log4j/chainsaw/Main;->LOG:Lorg/apache/log4j/Logger;

    const-string v6, "Missing classes for XML parser"

    invoke-virtual {v5, v6, v4}, Lorg/apache/log4j/Logger;->info(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 78
    const-string v5, "XML parser not in classpath - unable to load XML events."

    const-string v6, "CHAINSAW"

    invoke-static {p0, v5, v6, v3}, Ljavax/swing/JOptionPane;->showMessageDialog(Ljava/awt/Component;Ljava/lang/Object;Ljava/lang/String;I)V

    .line 90
    .end local v4    # "e":Ljava/lang/NoClassDefFoundError;
    :goto_0
    nop

    .line 92
    :goto_1
    new-instance v4, Ljavax/swing/JMenuItem;

    const-string v5, "Exit"

    invoke-direct {v4, v5}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    .line 93
    .local v4, "exitMenuItem":Ljavax/swing/JMenuItem;
    invoke-virtual {v2, v4}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 94
    sget-object v5, Lorg/apache/log4j/chainsaw/ExitAction;->INSTANCE:Lorg/apache/log4j/chainsaw/ExitAction;

    invoke-virtual {v4, v5}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 97
    new-instance v5, Lorg/apache/log4j/chainsaw/ControlPanel;

    invoke-direct {v5, v0}, Lorg/apache/log4j/chainsaw/ControlPanel;-><init>(Lorg/apache/log4j/chainsaw/MyTableModel;)V

    .line 98
    .local v5, "cp":Lorg/apache/log4j/chainsaw/ControlPanel;
    invoke-virtual {p0}, Lorg/apache/log4j/chainsaw/Main;->getContentPane()Ljava/awt/Container;

    move-result-object v6

    const-string v7, "North"

    invoke-virtual {v6, v5, v7}, Ljava/awt/Container;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 101
    new-instance v6, Ljavax/swing/JTable;

    invoke-direct {v6, v0}, Ljavax/swing/JTable;-><init>(Ljavax/swing/table/TableModel;)V

    .line 102
    .local v6, "table":Ljavax/swing/JTable;
    invoke-virtual {v6, v3}, Ljavax/swing/JTable;->setSelectionMode(I)V

    .line 103
    new-instance v7, Ljavax/swing/JScrollPane;

    invoke-direct {v7, v6}, Ljavax/swing/JScrollPane;-><init>(Ljava/awt/Component;)V

    .line 104
    .local v7, "scrollPane":Ljavax/swing/JScrollPane;
    const-string v8, "Events: "

    invoke-static {v8}, Ljavax/swing/BorderFactory;->createTitledBorder(Ljava/lang/String;)Ljavax/swing/border/TitledBorder;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljavax/swing/JScrollPane;->setBorder(Ljavax/swing/border/Border;)V

    .line 105
    new-instance v8, Ljava/awt/Dimension;

    const/16 v9, 0x12c

    const/16 v10, 0x384

    invoke-direct {v8, v10, v9}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v7, v8}, Ljavax/swing/JScrollPane;->setPreferredSize(Ljava/awt/Dimension;)V

    .line 108
    new-instance v8, Lorg/apache/log4j/chainsaw/DetailPanel;

    invoke-direct {v8, v6, v0}, Lorg/apache/log4j/chainsaw/DetailPanel;-><init>(Ljavax/swing/JTable;Lorg/apache/log4j/chainsaw/MyTableModel;)V

    .line 109
    .local v8, "details":Ljavax/swing/JPanel;
    new-instance v11, Ljava/awt/Dimension;

    invoke-direct {v11, v10, v9}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v8, v11}, Ljavax/swing/JPanel;->setPreferredSize(Ljava/awt/Dimension;)V

    .line 112
    new-instance v9, Ljavax/swing/JSplitPane;

    invoke-direct {v9, v3, v7, v8}, Ljavax/swing/JSplitPane;-><init>(ILjava/awt/Component;Ljava/awt/Component;)V

    move-object v3, v9

    .line 114
    .local v3, "jsp":Ljavax/swing/JSplitPane;
    invoke-virtual {p0}, Lorg/apache/log4j/chainsaw/Main;->getContentPane()Ljava/awt/Container;

    move-result-object v9

    const-string v10, "Center"

    invoke-virtual {v9, v3, v10}, Ljava/awt/Container;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 116
    new-instance v9, Lorg/apache/log4j/chainsaw/Main$1;

    invoke-direct {v9, p0}, Lorg/apache/log4j/chainsaw/Main$1;-><init>(Lorg/apache/log4j/chainsaw/Main;)V

    invoke-virtual {p0, v9}, Lorg/apache/log4j/chainsaw/Main;->addWindowListener(Ljava/awt/event/WindowListener;)V

    .line 122
    invoke-virtual {p0}, Lorg/apache/log4j/chainsaw/Main;->pack()V

    .line 123
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lorg/apache/log4j/chainsaw/Main;->setVisible(Z)V

    .line 125
    invoke-direct {p0, v0}, Lorg/apache/log4j/chainsaw/Main;->setupReceiver(Lorg/apache/log4j/chainsaw/MyTableModel;)V

    .line 126
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .line 54
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 54
    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method

.method private static initLog4J()V
    .locals 3

    .line 174
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 175
    .local v0, "props":Ljava/util/Properties;
    const-string v1, "log4j.rootLogger"

    const-string v2, "DEBUG, A1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 176
    const-string v1, "log4j.appender.A1"

    const-string v2, "org.apache.log4j.ConsoleAppender"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 178
    const-string v1, "log4j.appender.A1.layout"

    const-string v2, "org.apache.log4j.TTCCLayout"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 180
    invoke-static {v0}, Lorg/apache/log4j/PropertyConfigurator;->configure(Ljava/util/Properties;)V

    .line 181
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .param p0, "aArgs"    # [Ljava/lang/String;

    .line 189
    invoke-static {}, Lorg/apache/log4j/chainsaw/Main;->initLog4J()V

    .line 190
    new-instance v0, Lorg/apache/log4j/chainsaw/Main;

    invoke-direct {v0}, Lorg/apache/log4j/chainsaw/Main;-><init>()V

    .line 191
    return-void
.end method

.method private setupReceiver(Lorg/apache/log4j/chainsaw/MyTableModel;)V
    .locals 8
    .param p1, "aModel"    # Lorg/apache/log4j/chainsaw/MyTableModel;

    .line 134
    const/16 v0, 0x115d

    .line 135
    .local v0, "port":I
    const-string v1, "chainsaw.port"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, "strRep":Ljava/lang/String;
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 138
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v4

    .line 149
    goto :goto_0

    .line 139
    :catch_0
    move-exception v4

    .line 140
    .local v4, "nfe":Ljava/lang/NumberFormatException;
    sget-object v5, Lorg/apache/log4j/chainsaw/Main;->LOG:Lorg/apache/log4j/Logger;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Unable to parse chainsaw.port property with value "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/log4j/Logger;->fatal(Ljava/lang/Object;)V

    .line 142
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Unable to parse port number from \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, "\', quitting."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CHAINSAW"

    invoke-static {p0, v5, v6, v3}, Ljavax/swing/JOptionPane;->showMessageDialog(Ljava/awt/Component;Ljava/lang/Object;Ljava/lang/String;I)V

    .line 148
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 153
    .end local v4    # "nfe":Ljava/lang/NumberFormatException;
    :cond_0
    :goto_0
    :try_start_1
    new-instance v4, Lorg/apache/log4j/chainsaw/LoggingReceiver;

    invoke-direct {v4, p1, v0}, Lorg/apache/log4j/chainsaw/LoggingReceiver;-><init>(Lorg/apache/log4j/chainsaw/MyTableModel;I)V

    .line 154
    .local v4, "lr":Lorg/apache/log4j/chainsaw/LoggingReceiver;
    invoke-virtual {v4}, Lorg/apache/log4j/chainsaw/LoggingReceiver;->start()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 163
    .end local v4    # "lr":Lorg/apache/log4j/chainsaw/LoggingReceiver;
    goto :goto_1

    .line 155
    :catch_1
    move-exception v4

    .line 156
    .local v4, "e":Ljava/io/IOException;
    sget-object v5, Lorg/apache/log4j/chainsaw/Main;->LOG:Lorg/apache/log4j/Logger;

    const-string v6, "Unable to connect to socket server, quiting"

    invoke-virtual {v5, v6, v4}, Lorg/apache/log4j/Logger;->fatal(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 157
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Unable to create socket on port "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v6, ", quitting."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CHAINSAW"

    invoke-static {p0, v5, v6, v3}, Ljavax/swing/JOptionPane;->showMessageDialog(Ljava/awt/Component;Ljava/lang/Object;Ljava/lang/String;I)V

    .line 162
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 164
    .end local v4    # "e":Ljava/io/IOException;
    :goto_1
    return-void
.end method
