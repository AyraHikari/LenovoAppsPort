.class Lcom/zui/gallery/filtershow/controller/ColorChooser$1;
.super Ljava/lang/Object;
.source "ColorChooser.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/filtershow/controller/ColorChooser;->setUp(Landroid/view/ViewGroup;Lcom/zui/gallery/filtershow/controller/Parameter;Lcom/zui/gallery/filtershow/editors/Editor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/filtershow/controller/ColorChooser;

.field final synthetic val$buttonNo:I


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/controller/ColorChooser;I)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/zui/gallery/filtershow/controller/ColorChooser$1;->this$0:Lcom/zui/gallery/filtershow/controller/ColorChooser;

    iput p2, p0, Lcom/zui/gallery/filtershow/controller/ColorChooser$1;->val$buttonNo:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/ColorChooser$1;->this$0:Lcom/zui/gallery/filtershow/controller/ColorChooser;

    iget v1, p0, Lcom/zui/gallery/filtershow/controller/ColorChooser$1;->val$buttonNo:I

    invoke-virtual {v0, p1, v1}, Lcom/zui/gallery/filtershow/controller/ColorChooser;->selectColor(Landroid/view/View;I)V

    return-void
.end method
