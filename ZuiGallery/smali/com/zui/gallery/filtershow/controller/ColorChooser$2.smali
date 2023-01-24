.class Lcom/zui/gallery/filtershow/controller/ColorChooser$2;
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


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/controller/ColorChooser;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/zui/gallery/filtershow/controller/ColorChooser$2;->this$0:Lcom/zui/gallery/filtershow/controller/ColorChooser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 93
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/ColorChooser$2;->this$0:Lcom/zui/gallery/filtershow/controller/ColorChooser;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/controller/ColorChooser;->showColorPicker()V

    return-void
.end method
