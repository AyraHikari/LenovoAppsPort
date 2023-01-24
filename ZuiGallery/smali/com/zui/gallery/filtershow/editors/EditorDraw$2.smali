.class Lcom/zui/gallery/filtershow/editors/EditorDraw$2;
.super Ljava/lang/Object;
.source "EditorDraw.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/filtershow/editors/EditorDraw;->showPopupMenu(Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/filtershow/editors/EditorDraw;


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/editors/EditorDraw;)V
    .locals 0

    .line 427
    iput-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorDraw$2;->this$0:Lcom/zui/gallery/filtershow/editors/EditorDraw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 0

    .line 431
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorDraw$2;->this$0:Lcom/zui/gallery/filtershow/editors/EditorDraw;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/editors/EditorDraw;->clearDrawing()V

    const/4 p1, 0x1

    return p1
.end method
