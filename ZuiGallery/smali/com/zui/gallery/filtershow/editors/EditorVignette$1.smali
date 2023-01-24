.class Lcom/zui/gallery/filtershow/editors/EditorVignette$1;
.super Ljava/lang/Object;
.source "EditorVignette.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/filtershow/editors/EditorVignette;->openUtilityPanel(Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/filtershow/editors/EditorVignette;


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/editors/EditorVignette;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorVignette$1;->this$0:Lcom/zui/gallery/filtershow/editors/EditorVignette;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorVignette$1;->this$0:Lcom/zui/gallery/filtershow/editors/EditorVignette;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/editors/EditorVignette;->selectMenuItem(Landroid/view/MenuItem;)V

    const/4 p1, 0x1

    return p1
.end method
