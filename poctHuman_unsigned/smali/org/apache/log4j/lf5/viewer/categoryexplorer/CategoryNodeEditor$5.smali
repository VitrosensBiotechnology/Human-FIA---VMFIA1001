.class Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditor$5;
.super Ljava/lang/Object;
.source "CategoryNodeEditor.java"

# interfaces
.implements Ljava/awt/event/ActionListener;


# instance fields
.field private final synthetic this$0:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditor;

.field private final synthetic val$node:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;


# direct methods
.method constructor <init>(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditor;Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditor$5;->this$0:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditor;

    iput-object p2, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditor$5;->val$node:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 3
    .param p1, "e"    # Ljava/awt/event/ActionEvent;

    .line 187
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditor$5;->this$0:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditor;

    iget-object v0, v0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditor;->_categoryModel:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;

    iget-object v1, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditor$5;->val$node:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->setDescendantSelection(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;Z)V

    .line 188
    return-void
.end method
