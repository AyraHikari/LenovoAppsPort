.class Lcom/zui/gallery/filtershow/controller/StyleChooser$1;
.super Ljava/lang/Object;
.source "StyleChooser.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/filtershow/controller/StyleChooser;->setUp(Landroid/view/ViewGroup;Lcom/zui/gallery/filtershow/controller/Parameter;Lcom/zui/gallery/filtershow/editors/Editor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/filtershow/controller/StyleChooser;

.field final synthetic val$buttonNo:I


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/controller/StyleChooser;I)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/zui/gallery/filtershow/controller/StyleChooser$1;->this$0:Lcom/zui/gallery/filtershow/controller/StyleChooser;

    iput p2, p0, Lcom/zui/gallery/filtershow/controller/StyleChooser$1;->val$buttonNo:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 56
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/StyleChooser$1;->this$0:Lcom/zui/gallery/filtershow/controller/StyleChooser;

    iget-object p1, p1, Lcom/zui/gallery/filtershow/controller/StyleChooser;->mParameter:Lcom/zui/gallery/filtershow/controller/ParameterStyles;

    iget v0, p0, Lcom/zui/gallery/filtershow/controller/StyleChooser$1;->val$buttonNo:I

    invoke-interface {p1, v0}, Lcom/zui/gallery/filtershow/controller/ParameterStyles;->setSelected(I)V

    return-void
.end method
