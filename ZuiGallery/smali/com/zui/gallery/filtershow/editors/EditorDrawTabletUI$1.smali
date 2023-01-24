.class Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI$1;
.super Ljava/lang/Object;
.source "EditorDrawTabletUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;-><init>(Lcom/zui/gallery/filtershow/editors/EditorDraw;Landroid/content/Context;Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI$1;->this$0:Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 104
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI$1;->this$0:Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;->access$000(Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;)Lcom/zui/gallery/filtershow/editors/EditorDraw;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/editors/EditorDraw;->clearDrawing()V

    return-void
.end method
